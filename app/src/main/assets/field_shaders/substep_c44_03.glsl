#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 
float atomicAdd_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_data_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _data_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_data_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }float atomicAdd_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) + rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicSub_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt((intBitsToFloat(old_val) - rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMax_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt(max(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); } float atomicMin_gtmp_f32(int addr, float rhs) { int old_val, new_val, ret; do { old_val = _gtmp_i32_[addr]; new_val = floatBitsToInt(min(intBitsToFloat(old_val), rhs)); } while (old_val != atomicCompSwap(_gtmp_i32_[addr], old_val, new_val)); return intBitsToFloat(old_val); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_03()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (4096); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int Cmf = int(63);
      int ClJ = int(3);
      int Ea = _itv;
      int Cjj = int(6);
      int Cjk = Ea >> Cjj;
      int Cjm = Cjk & Cmf;
      int Cjq = Ea & Cmf;
      float Ek = float(0.0);
      int El = int(1);
      float Em = float(3.0);
      float En = float(64.0);
      int C4n = 0;
      int Cui = int(0);
      int C4p = C4n + 229416 * Cui; // S0
      int C4q = C4p + 49192; // S25
      int CBb = Cjm << Cjj;
      int Cup = Cjq + CBb;
      int C4u = C4q + 4 * Cup; // S25
      int C4v = C4u + 0; // S26
      float Ep = _data_f32_[C4v >> 2];
      int Eq = -int(Ep > Ek);
      int Er = Eq & El;
      if (Er != 0) {
        float Et = _data_f32_[C4v >> 2];
        int C4O = C4p + 131112; // S22
        int C4S = C4O + 8 * Cup; // S22
        int C4T = C4S + 0; // S23
        float Ev = _data_f32_[C4T >> 2];
        float Ew = Ev / Et;
        int C55 = C4S + 4; // S24
        float Ey = _data_f32_[C55 >> 2];
        float Ez = Ey / Et;
        _data_f32_[C4T >> 2] = Ew;
        _data_f32_[C55 >> 2] = Ez;
      }
      float ED = float(-0.003828125);
      int C5A = C4p + 131112; // S22
      int C5E = C5A + 8 * Cup; // S22
      int C5F = C5E + 4; // S24
      float EE = _data_f32_[C5F >> 2];
      float EF = EE + ED;
      _data_f32_[C5F >> 2] = EF;
      int EI = -int(Cjm < ClJ);
      int EJ = EI & El;
      int C63 = C5E + 0; // S23
      float EL = _data_f32_[C63 >> 2];
      int EM = -int(EL < Ek);
      int EN = EM & El;
      int EO = EJ & EN;
      if (EO != 0) {
        _data_f32_[C63 >> 2] = Ek;
      }
      int ER = int(61);
      int ES = -int(Cjm > ER);
      int ET = ES & El;
      float EU = _data_f32_[C63 >> 2];
      int EV = -int(EU > Ek);
      int EW = EV & El;
      int EX = ET & EW;
      if (EX != 0) {
        _data_f32_[C63 >> 2] = Ek;
      }
      int F0 = -int(Cjq < ClJ);
      int F1 = F0 & El;
      float F2 = _data_f32_[C5F >> 2];
      int F3 = -int(F2 < Ek);
      int F4 = F3 & El;
      int F5 = F1 & F4;
      if (F5 != 0) {
        _data_f32_[C5F >> 2] = Ek;
      }
      int F8 = -int(Cjq > ER);
      int F9 = F8 & El;
      float Fa = _data_f32_[C5F >> 2];
      int Fb = -int(Fa > Ek);
      int Fc = Fb & El;
      int Fd = F9 & Fc;
      if (Fd != 0) {
        _data_f32_[C5F >> 2] = Ek;
      }
      float Fg = float(Cjm);
      float Fh = float(Cjq);
      int Fj = int(2);
      for (int Fk_ = Cui; Fk_ < Fj; Fk_ += 1) {
        int Fk = Fk_;
        int Fl = Fk;
        int Fm = Fl << El;
        int C7v = C4p + 8; // S27
        int Cly = Fm & ClJ;
        int C7y = C7v + 8 * Cly; // S27
        int C7z = C7y + 0; // S28
        float Fo = _data_f32_[C7z >> 2];
        float Fp = Fo * En;
        int C7J = C7y + 4; // S29
        float Fr = _data_f32_[C7J >> 2];
        float Fs = Fr * En;
        int Ft = Fm + El;
        int ClG = Ft & ClJ;
        int C7S = C7v + 8 * ClG; // S27
        int C7T = C7S + 0; // S28
        float Fv = _data_f32_[C7T >> 2];
        float Fw = Fv * En;
        int C83 = C7S + 4; // S29
        float Fy = _data_f32_[C83 >> 2];
        float Fz = Fy * En;
        float FA = _data_f32_[C63 >> 2];
        float FB = _data_f32_[C5F >> 2];
        float FC = float(0);
        FC = FA;
        float FE = float(0);
        FE = FB;
        int FG = -int(Fp < Fg);
        int FH = FG & El;
        int FI = -int(Fg <= Fw);
        int FJ = FH & FI;
        int FK = -int(Fz < Fh);
        int FL = FK & El;
        int FM = -int(Fh <= Fs);
        int FN = FL & FM;
        int FO = FJ & FN;
        if (FO != 0) {
          float FQ = Fp + Em;
          int FR = -int(Fg <= FQ);
          int FS = FH & FR;
          int FT = -int(FA > Ek);
          int FU = FT & El;
          int FV = FS & FU;
          if (FV != 0) {
            FC = Ek;
          }
          float FY = Fw - Em;
          int FZ = -int(FY < Fg);
          int G0 = FZ & El;
          int G1 = G0 & FI;
          int G2 = -int(FA < Ek);
          int G3 = G2 & El;
          int G4 = G1 & G3;
          if (G4 != 0) {
            FC = Ek;
          }
          float G7 = Fs - Em;
          int G8 = -int(G7 < Fh);
          int G9 = G8 & El;
          int Ga = -int(Fh < Fs);
          int Gb = G9 & Ga;
          int Gc = -int(FB < Ek);
          int Gd = Gc & El;
          int Ge = Gb & Gd;
          if (Ge != 0) {
          } else {
            FC = Ek;
          }
          FE = Ek;
        }
        float Gi = FC;
        float Gj = FE;
        _data_f32_[C63 >> 2] = Gi;
        _data_f32_[C5F >> 2] = Gj;
      }
  }
}

void main()
{
  substep_c44_03();
}
