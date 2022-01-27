#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_03()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (4096); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int CEK = int(63);
      int CEe = int(3);
      int FO = _itv;
      int CBO = int(6);
      int CBP = FO >> CBO;
      int CBR = CBP & CEK;
      int CBV = FO & CEK;
      int FY = int(0);
      int FZ = int(1);
      float G0 = float(3.0);
      float G1 = float(64.0);
      int G2 = int(-195);
      float G3 = float(10000.0);
      float G4 = float(65536.0);
      int CmS = 0;
      int CmU = CmS + 229416 * FY; // S0
      int CmV = CmU + 49192; // S25
      int CTG = CBR << CBO;
      int CMU = CBV + CTG;
      int CmZ = CmV + 4 * CMU; // S25
      int Cn0 = CmZ + 0; // S26
      int G6 = _data_i32_[Cn0 >> 2];
      int G7 = -int(G6 > FY);
      int G8 = G7 & FZ;
      if (G8 != 0) {
        int Ga = _data_i32_[Cn0 >> 2];
        float Gb = float(Ga);
        float Gc = G4 / Gb;
        int Cnj = CmU + 131112; // S22
        int Cnn = Cnj + 8 * CMU; // S22
        int Cno = Cnn + 0; // S23
        int Ge = _data_i32_[Cno >> 2];
        float Gf = float(Ge);
        float Gg = Gc * Gf;
        int CnA = Cnn + 4; // S24
        int Gi = _data_i32_[CnA >> 2];
        float Gj = float(Gi);
        float Gk = Gc * Gj;
        float Gl = Gg * G3;
        float Gm = Gk * G3;
        int Gn = int(Gl);
        _data_i32_[Cno >> 2] = Gn;
        int Gp = int(Gm);
        _data_i32_[CnA >> 2] = Gp;
        int Gr = _data_i32_[CnA >> 2];
        int Gs = Gr + G2;
        _data_i32_[CnA >> 2] = Gs;
      }
      int Gv = -int(CBR < CEe);
      int Gw = Gv & FZ;
      int Cot = CmU + 131112; // S22
      int Cox = Cot + 8 * CMU; // S22
      int Coy = Cox + 0; // S23
      int Gy = _data_i32_[Coy >> 2];
      int Gz = -int(Gy < FY);
      int GA = Gz & FZ;
      int GB = Gw & GA;
      if (GB != 0) {
        _data_i32_[Coy >> 2] = FY;
      }
      int GE = int(61);
      int GF = -int(CBR > GE);
      int GG = GF & FZ;
      int GH = _data_i32_[Coy >> 2];
      int GI = -int(GH > FY);
      int GJ = GI & FZ;
      int GK = GG & GJ;
      if (GK != 0) {
        _data_i32_[Coy >> 2] = FY;
      }
      int GN = -int(CBV < CEe);
      int GO = GN & FZ;
      int Cpk = Cox + 4; // S24
      int GQ = _data_i32_[Cpk >> 2];
      int GR = -int(GQ < FY);
      int GS = GR & FZ;
      int GT = GO & GS;
      if (GT != 0) {
        _data_i32_[Cpk >> 2] = FY;
      }
      int GW = -int(CBV > GE);
      int GX = GW & FZ;
      int GY = _data_i32_[Cpk >> 2];
      int GZ = -int(GY > FY);
      int H0 = GZ & FZ;
      int H1 = GX & H0;
      if (H1 != 0) {
        _data_i32_[Cpk >> 2] = FY;
      }
      float H4 = float(CBR);
      float H5 = float(CBV);
      int H6 = int(2);
      for (int H7_ = FY; H7_ < H6; H7_ += 1) {
        int H7 = H7_;
        int H8 = H7;
        int H9 = H8 << FZ;
        int Cq0 = CmU + 8; // S27
        int CE3 = H9 & CEe;
        int Cq3 = Cq0 + 8 * CE3; // S27
        int Cq4 = Cq3 + 0; // S28
        float Hb = _data_f32_[Cq4 >> 2];
        float Hc = Hb * G1;
        int Cqe = Cq3 + 4; // S29
        float He = _data_f32_[Cqe >> 2];
        float Hf = He * G1;
        int Hg = H9 + FZ;
        int CEb = Hg & CEe;
        int Cqn = Cq0 + 8 * CEb; // S27
        int Cqo = Cqn + 0; // S28
        float Hi = _data_f32_[Cqo >> 2];
        float Hj = Hi * G1;
        int Cqy = Cqn + 4; // S29
        float Hl = _data_f32_[Cqy >> 2];
        float Hm = Hl * G1;
        int Hn = _data_i32_[Coy >> 2];
        int Ho = _data_i32_[Cpk >> 2];
        int Hp = int(0);
        Hp = Hn;
        int Hr = int(0);
        Hr = Ho;
        int Ht = -int(Hc < H4);
        int Hu = Ht & FZ;
        int Hv = -int(H4 <= Hj);
        int Hw = Hu & Hv;
        int Hx = -int(Hm < H5);
        int Hy = Hx & FZ;
        int Hz = -int(H5 <= Hf);
        int HA = Hy & Hz;
        int HB = Hw & HA;
        if (HB != 0) {
          float HD = Hc + G0;
          int HE = -int(H4 <= HD);
          int HF = Hu & HE;
          int HG = -int(Hn > FY);
          int HH = HG & FZ;
          int HI = HF & HH;
          if (HI != 0) {
            Hp = FY;
          }
          float HL = Hj - G0;
          int HM = -int(HL < H4);
          int HN = HM & FZ;
          int HO = HN & Hv;
          int HP = -int(Hn < FY);
          int HQ = HP & FZ;
          int HR = HO & HQ;
          if (HR != 0) {
            Hp = FY;
          }
          float HU = Hf - G0;
          int HV = -int(HU < H5);
          int HW = HV & FZ;
          int HX = -int(H5 < Hf);
          int HY = HW & HX;
          int HZ = -int(Ho < FY);
          int I0 = HZ & FZ;
          int I1 = HY & I0;
          if (I1 != 0) {
          } else {
            Hp = FY;
          }
          Hr = FY;
        }
        int I5 = Hp;
        int I6 = Hr;
        _data_i32_[Coy >> 2] = I5;
        _data_i32_[Cpk >> 2] = I6;
      }
  }
}

void main()
{
  substep_c44_03();
}
