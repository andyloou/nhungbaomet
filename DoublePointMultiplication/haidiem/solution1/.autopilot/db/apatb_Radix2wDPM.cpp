#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_k1 "../tv/cdatafile/c.Radix2wDPM.autotvin_k1.dat"
#define AUTOTB_TVOUT_k1 "../tv/cdatafile/c.Radix2wDPM.autotvout_k1.dat"
// wrapc file define:
#define AUTOTB_TVIN_k2 "../tv/cdatafile/c.Radix2wDPM.autotvin_k2.dat"
#define AUTOTB_TVOUT_k2 "../tv/cdatafile/c.Radix2wDPM.autotvout_k2.dat"
// wrapc file define:
#define AUTOTB_TVIN_R "../tv/cdatafile/c.Radix2wDPM.autotvin_R.dat"
#define AUTOTB_TVOUT_R "../tv/cdatafile/c.Radix2wDPM.autotvout_R.dat"
// wrapc file define:
#define AUTOTB_TVIN_S "../tv/cdatafile/c.Radix2wDPM.autotvin_S.dat"
#define AUTOTB_TVOUT_S "../tv/cdatafile/c.Radix2wDPM.autotvout_S.dat"
// wrapc file define:
#define AUTOTB_TVIN_P "../tv/cdatafile/c.Radix2wDPM.autotvin_P.dat"
#define AUTOTB_TVOUT_P "../tv/cdatafile/c.Radix2wDPM.autotvout_P.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_k1 "../tv/rtldatafile/rtl.Radix2wDPM.autotvout_k1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_k2 "../tv/rtldatafile/rtl.Radix2wDPM.autotvout_k2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_R "../tv/rtldatafile/rtl.Radix2wDPM.autotvout_R.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_S "../tv/rtldatafile/rtl.Radix2wDPM.autotvout_S.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_P "../tv/rtldatafile/rtl.Radix2wDPM.autotvout_P.dat"


inline void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  k1_depth = 0;
  k2_depth = 0;
  R_depth = 0;
  S_depth = 0;
  P_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{k1 " << k1_depth << "}\n";
  total_list << "{k2 " << k2_depth << "}\n";
  total_list << "{R " << R_depth << "}\n";
  total_list << "{S " << S_depth << "}\n";
  total_list << "{P " << P_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int k1_depth;
    int k2_depth;
    int R_depth;
    int S_depth;
    int P_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
struct __cosim_s20__ { char data[32]; };
struct __cosim_s40__ { char data[64]; };
struct __cosim_s15__ { char data[21]; };
struct __cosim_s2A__ { char data[42]; };
extern "C" void Radix2wDPM_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_Radix2wDPM_hw(volatile void * __xlx_apatb_param_k1, volatile void * __xlx_apatb_param_k2, volatile void * __xlx_apatb_param_R, volatile void * __xlx_apatb_param_S, volatile void * __xlx_apatb_param_P) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_P);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<332> > P_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "P");
  
            // push token into output port buffer
            if (AESL_token != "") {
              P_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "P" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((long long*)__xlx_apatb_param_P)[0*5+0] = P_pc_buffer[0].range(63,0).to_int64();
((long long*)__xlx_apatb_param_P)[0*5+1] = P_pc_buffer[0].range(127,64).to_int64();
((long long*)__xlx_apatb_param_P)[0*5+2] = P_pc_buffer[0].range(191,128).to_int64();
((long long*)__xlx_apatb_param_P)[0*5+3] = P_pc_buffer[0].range(255,192).to_int64();
((long long*)__xlx_apatb_param_P)[0*5+4] = P_pc_buffer[0].range(319,256).to_int64();
((long long*)__xlx_apatb_param_P)[0*5+5] = P_pc_buffer[0].range(331,320).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
// print k1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_k1, begin_str(AESL_transaction));
{
    sc_bv<166> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_k1)[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_k1)[0*2+1];
__xlx_tmp_lv.range(165,128) = ((long long*)__xlx_apatb_param_k1)[0*2+2];
aesl_fh.write(AUTOTB_TVIN_k1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.k1_depth);
aesl_fh.write(AUTOTB_TVIN_k1, end_str());
}

// print k2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_k2, begin_str(AESL_transaction));
{
    sc_bv<166> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_k2)[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_k2)[0*2+1];
__xlx_tmp_lv.range(165,128) = ((long long*)__xlx_apatb_param_k2)[0*2+2];
aesl_fh.write(AUTOTB_TVIN_k2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.k2_depth);
aesl_fh.write(AUTOTB_TVIN_k2, end_str());
}

// print R Transactions
{
aesl_fh.write(AUTOTB_TVIN_R, begin_str(AESL_transaction));
{
    sc_bv<332> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_R)[0*5+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_R)[0*5+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_R)[0*5+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_R)[0*5+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_R)[0*5+4];
__xlx_tmp_lv.range(331,320) = ((long long*)__xlx_apatb_param_R)[0*5+5];
aesl_fh.write(AUTOTB_TVIN_R, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.R_depth);
aesl_fh.write(AUTOTB_TVIN_R, end_str());
}

// print S Transactions
{
aesl_fh.write(AUTOTB_TVIN_S, begin_str(AESL_transaction));
{
    sc_bv<332> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_S)[0*5+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_S)[0*5+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_S)[0*5+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_S)[0*5+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_S)[0*5+4];
__xlx_tmp_lv.range(331,320) = ((long long*)__xlx_apatb_param_S)[0*5+5];
aesl_fh.write(AUTOTB_TVIN_S, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.S_depth);
aesl_fh.write(AUTOTB_TVIN_S, end_str());
}

// print P Transactions
{
aesl_fh.write(AUTOTB_TVIN_P, begin_str(AESL_transaction));
{
    sc_bv<332> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_P)[0*5+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_P)[0*5+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_P)[0*5+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_P)[0*5+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_P)[0*5+4];
__xlx_tmp_lv.range(331,320) = ((long long*)__xlx_apatb_param_P)[0*5+5];
aesl_fh.write(AUTOTB_TVIN_P, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.P_depth);
aesl_fh.write(AUTOTB_TVIN_P, end_str());
}

CodeState = CALL_C_DUT;
Radix2wDPM_hw_stub_wrapper(__xlx_apatb_param_k1, __xlx_apatb_param_k2, __xlx_apatb_param_R, __xlx_apatb_param_S, __xlx_apatb_param_P);
CodeState = DUMP_OUTPUTS;
// print P Transactions
{
aesl_fh.write(AUTOTB_TVOUT_P, begin_str(AESL_transaction));
{
    sc_bv<332> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_P)[0*5+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_P)[0*5+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_P)[0*5+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_P)[0*5+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_P)[0*5+4];
__xlx_tmp_lv.range(331,320) = ((long long*)__xlx_apatb_param_P)[0*5+5];
aesl_fh.write(AUTOTB_TVOUT_P, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.P_depth);
aesl_fh.write(AUTOTB_TVOUT_P, end_str());
}

CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
