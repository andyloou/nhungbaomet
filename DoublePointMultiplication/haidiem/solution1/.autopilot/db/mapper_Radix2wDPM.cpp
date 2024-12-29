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
struct __cosim_s20__ { char data[32]; };
struct __cosim_s40__ { char data[64]; };
struct __cosim_s15__ { char data[21]; };
struct __cosim_s2A__ { char data[42]; };
extern "C" void Radix2wDPM(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_Radix2wDPM_hw(volatile void * __xlx_apatb_param_k1, volatile void * __xlx_apatb_param_k2, volatile void * __xlx_apatb_param_R, volatile void * __xlx_apatb_param_S, volatile void * __xlx_apatb_param_P) {
  // DUT call
  Radix2wDPM(__xlx_apatb_param_k1, __xlx_apatb_param_k2, __xlx_apatb_param_R, __xlx_apatb_param_S, __xlx_apatb_param_P);
}
