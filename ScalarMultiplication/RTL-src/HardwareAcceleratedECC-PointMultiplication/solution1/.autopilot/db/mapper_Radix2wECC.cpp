#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void Radix2wECC(int*, int, int, int);
extern "C" void apatb_Radix2wECC_hw(volatile void * __xlx_apatb_param_k, volatile void * __xlx_apatb_param_x_o, volatile void * __xlx_apatb_param_y_o) {
  // Collect __xlx_k_x_o_y_o__tmp_vec
  vector<sc_bv<32> >__xlx_k_x_o_y_o__tmp_vec;
  for (int j = 0, e = 6; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_k)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_k)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_k)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_k)[j*4+3];
    __xlx_k_x_o_y_o__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_k = 6;
  int __xlx_offset_param_k = 0;
  int __xlx_offset_byte_param_k = 0*4;
  for (int j = 0, e = 6; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_x_o)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_x_o)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_x_o)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_x_o)[j*4+3];
    __xlx_k_x_o_y_o__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_x_o = 6;
  int __xlx_offset_param_x_o = 6;
  int __xlx_offset_byte_param_x_o = 6*4;
  for (int j = 0, e = 6; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_y_o)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_y_o)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_y_o)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_y_o)[j*4+3];
    __xlx_k_x_o_y_o__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_y_o = 6;
  int __xlx_offset_param_y_o = 12;
  int __xlx_offset_byte_param_y_o = 12*4;
  int* __xlx_k_x_o_y_o__input_buffer= new int[__xlx_k_x_o_y_o__tmp_vec.size()];
  for (int i = 0; i < __xlx_k_x_o_y_o__tmp_vec.size(); ++i) {
    __xlx_k_x_o_y_o__input_buffer[i] = __xlx_k_x_o_y_o__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  Radix2wECC(__xlx_k_x_o_y_o__input_buffer, __xlx_offset_byte_param_k, __xlx_offset_byte_param_x_o, __xlx_offset_byte_param_y_o);
// print __xlx_apatb_param_k
  sc_bv<32>*__xlx_k_output_buffer = new sc_bv<32>[__xlx_size_param_k];
  for (int i = 0; i < __xlx_size_param_k; ++i) {
    __xlx_k_output_buffer[i] = __xlx_k_x_o_y_o__input_buffer[i+__xlx_offset_param_k];
  }
  for (int i = 0; i < __xlx_size_param_k; ++i) {
    ((char*)__xlx_apatb_param_k)[i*4+0] = __xlx_k_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_k)[i*4+1] = __xlx_k_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_k)[i*4+2] = __xlx_k_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_k)[i*4+3] = __xlx_k_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_x_o
  sc_bv<32>*__xlx_x_o_output_buffer = new sc_bv<32>[__xlx_size_param_x_o];
  for (int i = 0; i < __xlx_size_param_x_o; ++i) {
    __xlx_x_o_output_buffer[i] = __xlx_k_x_o_y_o__input_buffer[i+__xlx_offset_param_x_o];
  }
  for (int i = 0; i < __xlx_size_param_x_o; ++i) {
    ((char*)__xlx_apatb_param_x_o)[i*4+0] = __xlx_x_o_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_x_o)[i*4+1] = __xlx_x_o_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_x_o)[i*4+2] = __xlx_x_o_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_x_o)[i*4+3] = __xlx_x_o_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_y_o
  sc_bv<32>*__xlx_y_o_output_buffer = new sc_bv<32>[__xlx_size_param_y_o];
  for (int i = 0; i < __xlx_size_param_y_o; ++i) {
    __xlx_y_o_output_buffer[i] = __xlx_k_x_o_y_o__input_buffer[i+__xlx_offset_param_y_o];
  }
  for (int i = 0; i < __xlx_size_param_y_o; ++i) {
    ((char*)__xlx_apatb_param_y_o)[i*4+0] = __xlx_y_o_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_y_o)[i*4+1] = __xlx_y_o_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_y_o)[i*4+2] = __xlx_y_o_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_y_o)[i*4+3] = __xlx_y_o_output_buffer[i].range(31, 24).to_uint();
  }
}
