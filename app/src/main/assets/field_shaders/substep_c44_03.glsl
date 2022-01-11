#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_03()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (4096); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int IQ = _itv;
      int CLR = 0;
      int D8Y = int(0);
      int CLT = CLR + 262144 * D8Y; // S0
      int CLU = CLT + 32768; // S1
      int DcD = int(4095);
      int Dcx = IQ & DcD;
      int D90 = int(1);
      int CLX = CLU + 8 * Dcx; // S1
      int CLY = CLX + 0; // S2
      float IX = _data_f32_[CLY >> 2];
      float IY = float(64.0);
      float IZ = IX * IY;
      int CM8 = CLX + 4; // S3
      float J1 = _data_f32_[CM8 >> 2];
      float J2 = J1 * IY;
      float J3 = float(0.5);
      float J4 = IZ - J3;
      float J5 = J2 - J3;
      int J6 = int(J4);
      int J7 = int(J5);
      float J8 = float(J6);
      float J9 = float(J7);
      float Ja = IZ - J8;
      float Jb = J2 - J9;
      float Jc = float(1.5);
      float Jd = Jc - Ja;
      float Je = Jc - Jb;
      float Jf = Jd * Jd;
      float Jg = Je * Je;
      float Jh = Jf * J3;
      float Ji = Jg * J3;
      float Jj = float(1.0);
      float Jk = Ja - Jj;
      float Jl = Jb - Jj;
      float Jm = Jk * Jk;
      float Jn = Jl * Jl;
      float Jo = float(0.75);
      float Jp = Jo - Jm;
      float Jq = Jo - Jn;
      float Jr = Ja - J3;
      float Js = Jb - J3;
      float Jt = Jr * Jr;
      float Ju = Js * Js;
      float Jv = Jt * J3;
      float Jw = Ju * J3;
      float JD = float(0.0);
      float JE = JD - Ja;
      float JF = JD - Jb;
      int CMf = CLT + 98304; // S19
      int CYM = int(63);
      int CYN = J6 & CYM;
      int CYR = J7 & CYM;
      int DcO = int(6);
      int DcP = CYN << DcO;
      int D9f = CYR + DcP;
      int CMj = CMf + 8 * D9f; // S19
      int CMk = CMj + 0; // S20
      int JH = _data_i32_[CMk >> 2];
      float JI = float(JH);
      float JJ = float(0.0001);
      float JK = JI * JJ;
      int CMw = CMj + 4; // S21
      int JM = _data_i32_[CMw >> 2];
      float JN = float(JM);
      float JO = JN * JJ;
      float JP = Jh * Ji;
      float JQ = JP * JK;
      float JR = JP * JO;
      float JY = JK * JE;
      float JZ = JK * JF;
      float K0 = JO * JE;
      float K1 = JO * JF;
      float K2 = float(256.0);
      float K3 = JP * K2;
      float K4 = K3 * JY;
      float K5 = K3 * JZ;
      float K6 = K3 * K0;
      float K7 = K3 * K1;
      float Kk = Jj - Jb;
      int Km = J7 + D90;
      int CZ7 = Km & CYM;
      int D9v = CZ7 + DcP;
      int CMH = CMf + 8 * D9v; // S19
      int CMI = CMH + 0; // S20
      int Ko = _data_i32_[CMI >> 2];
      float Kp = float(Ko);
      float Kq = Kp * JJ;
      int CMU = CMH + 4; // S21
      int Ks = _data_i32_[CMU >> 2];
      float Kt = float(Ks);
      float Ku = Kt * JJ;
      float Kv = Jh * Jq;
      float Kw = Kv * Kq;
      float Kx = Kv * Ku;
      float Kz = JQ + Kw;
      float KC = JR + Kx;
      float KE = Kq * JE;
      float KF = Kq * Kk;
      float KG = Ku * JE;
      float KH = Ku * Kk;
      float KI = Kv * K2;
      float KJ = KI * KE;
      float KK = KI * KF;
      float KL = KI * KG;
      float KM = KI * KH;
      float KO = K4 + KJ;
      float KR = K5 + KK;
      float KU = K6 + KL;
      float KX = K7 + KM;
      float KZ = float(2.0);
      float L0 = KZ - Jb;
      int L1 = int(2);
      int L2 = J7 + L1;
      int CZn = L2 & CYM;
      int D9L = CZn + DcP;
      int CN5 = CMf + 8 * D9L; // S19
      int CN6 = CN5 + 0; // S20
      int L4 = _data_i32_[CN6 >> 2];
      float L5 = float(L4);
      float L6 = L5 * JJ;
      int CNi = CN5 + 4; // S21
      int L8 = _data_i32_[CNi >> 2];
      float L9 = float(L8);
      float La = L9 * JJ;
      float Lb = Jh * Jw;
      float Lc = Lb * L6;
      float Ld = Lb * La;
      float Lf = Kz + Lc;
      float Li = KC + Ld;
      float Lk = L6 * JE;
      float Ll = L6 * L0;
      float Lm = La * JE;
      float Ln = La * L0;
      float Lo = Lb * K2;
      float Lp = Lo * Lk;
      float Lq = Lo * Ll;
      float Lr = Lo * Lm;
      float Ls = Lo * Ln;
      float Lu = KO + Lp;
      float Lx = KR + Lq;
      float LA = KU + Lr;
      float LD = KX + Ls;
      float LF = Jj - Ja;
      int LG = J6 + D90;
      int CZz = LG & CYM;
      int DcR = CZz << DcO;
      int Da1 = CYR + DcR;
      int CNt = CMf + 8 * Da1; // S19
      int CNu = CNt + 0; // S20
      int LI = _data_i32_[CNu >> 2];
      float LJ = float(LI);
      float LK = LJ * JJ;
      int CNG = CNt + 4; // S21
      int LM = _data_i32_[CNG >> 2];
      float LN = float(LM);
      float LO = LN * JJ;
      float LP = Jp * Ji;
      float LQ = LP * LK;
      float LR = LP * LO;
      float LT = Lf + LQ;
      float LW = Li + LR;
      float LY = LK * LF;
      float LZ = LK * JF;
      float M0 = LO * LF;
      float M1 = LO * JF;
      float M2 = LP * K2;
      float M3 = M2 * LY;
      float M4 = M2 * LZ;
      float M5 = M2 * M0;
      float M6 = M2 * M1;
      float M8 = Lu + M3;
      float Mb = Lx + M4;
      float Me = LA + M5;
      float Mh = LD + M6;
      int Dah = CZ7 + DcR;
      int CNR = CMf + 8 * Dah; // S19
      int CNS = CNR + 0; // S20
      int Mk = _data_i32_[CNS >> 2];
      float Ml = float(Mk);
      float Mm = Ml * JJ;
      int CO4 = CNR + 4; // S21
      int Mo = _data_i32_[CO4 >> 2];
      float Mp = float(Mo);
      float Mq = Mp * JJ;
      float Mr = Jp * Jq;
      float Ms = Mr * Mm;
      float Mt = Mr * Mq;
      float Mv = LT + Ms;
      float My = LW + Mt;
      float MA = Mm * LF;
      float MB = Mm * Kk;
      float MC = Mq * LF;
      float MD = Mq * Kk;
      float ME = Mr * K2;
      float MF = ME * MA;
      float MG = ME * MB;
      float MH = ME * MC;
      float MI = ME * MD;
      float MK = M8 + MF;
      float MN = Mb + MG;
      float MQ = Me + MH;
      float MT = Mh + MI;
      int Dax = CZn + DcR;
      int COf = CMf + 8 * Dax; // S19
      int COg = COf + 0; // S20
      int MW = _data_i32_[COg >> 2];
      float MX = float(MW);
      float MY = MX * JJ;
      int COs = COf + 4; // S21
      int N0 = _data_i32_[COs >> 2];
      float N1 = float(N0);
      float N2 = N1 * JJ;
      float N3 = Jp * Jw;
      float N4 = N3 * MY;
      float N5 = N3 * N2;
      float N7 = Mv + N4;
      float Na = My + N5;
      float Nc = MY * LF;
      float Nd = MY * L0;
      float Ne = N2 * LF;
      float Nf = N2 * L0;
      float Ng = N3 * K2;
      float Nh = Ng * Nc;
      float Ni = Ng * Nd;
      float Nj = Ng * Ne;
      float Nk = Ng * Nf;
      float Nm = MK + Nh;
      float Np = MN + Ni;
      float Ns = MQ + Nj;
      float Nv = MT + Nk;
      float Nx = KZ - Ja;
      int Ny = J6 + L1;
      int D0l = Ny & CYM;
      int DcT = D0l << DcO;
      int DaN = CYR + DcT;
      int COD = CMf + 8 * DaN; // S19
      int COE = COD + 0; // S20
      int NA = _data_i32_[COE >> 2];
      float NB = float(NA);
      float NC = NB * JJ;
      int COQ = COD + 4; // S21
      int NE = _data_i32_[COQ >> 2];
      float NF = float(NE);
      float NG = NF * JJ;
      float NH = Jv * Ji;
      float NI = NH * NC;
      float NJ = NH * NG;
      float NL = N7 + NI;
      float NO = Na + NJ;
      float NQ = NC * Nx;
      float NR = NC * JF;
      float NS = NG * Nx;
      float NT = NG * JF;
      float NU = NH * K2;
      float NV = NU * NQ;
      float NW = NU * NR;
      float NX = NU * NS;
      float NY = NU * NT;
      float O0 = Nm + NV;
      float O3 = Np + NW;
      float O6 = Ns + NX;
      float O9 = Nv + NY;
      int Db3 = CZ7 + DcT;
      int CP1 = CMf + 8 * Db3; // S19
      int CP2 = CP1 + 0; // S20
      int Oc = _data_i32_[CP2 >> 2];
      float Od = float(Oc);
      float Oe = Od * JJ;
      int CPe = CP1 + 4; // S21
      int Og = _data_i32_[CPe >> 2];
      float Oh = float(Og);
      float Oi = Oh * JJ;
      float Oj = Jv * Jq;
      float Ok = Oj * Oe;
      float Ol = Oj * Oi;
      float On = NL + Ok;
      float Oq = NO + Ol;
      float Os = Oe * Nx;
      float Ot = Oe * Kk;
      float Ou = Oi * Nx;
      float Ov = Oi * Kk;
      float Ow = Oj * K2;
      float Ox = Ow * Os;
      float Oy = Ow * Ot;
      float Oz = Ow * Ou;
      float OA = Ow * Ov;
      float OC = O0 + Ox;
      float OF = O3 + Oy;
      float OI = O6 + Oz;
      float OL = O9 + OA;
      int Dbj = CZn + DcT;
      int CPp = CMf + 8 * Dbj; // S19
      int CPq = CPp + 0; // S20
      int OO = _data_i32_[CPq >> 2];
      float OP = float(OO);
      float OQ = OP * JJ;
      int CPC = CPp + 4; // S21
      int OS = _data_i32_[CPC >> 2];
      float OT = float(OS);
      float OU = OT * JJ;
      float OV = Jv * Jw;
      float OW = OV * OQ;
      float OX = OV * OU;
      float OZ = On + OW;
      float P2 = Oq + OX;
      float P4 = OQ * Nx;
      float P5 = OQ * L0;
      float P6 = OU * Nx;
      float P7 = OU * L0;
      float P8 = OV * K2;
      float P9 = P8 * P4;
      float Pa = P8 * P5;
      float Pb = P8 * P6;
      float Pc = P8 * P7;
      float Pe = OC + P9;
      float Ph = OF + Pa;
      float Pk = OI + Pb;
      float Pn = OL + Pc;
      int CPI = CLT + 65536; // S4
      int CPL = CPI + 8 * Dcx; // S4
      int CPM = CPL + 0; // S5
      _data_f32_[CPM >> 2] = OZ;
      int CPW = CPL + 4; // S6
      _data_f32_[CPW >> 2] = P2;
      int CQ2 = CLT + 131072; // S7
      int CQ5 = CQ2 + 16 * Dcx; // S7
      int CQ6 = CQ5 + 0; // S8
      _data_f32_[CQ6 >> 2] = Pe;
      int CQg = CQ5 + 4; // S9
      _data_f32_[CQg >> 2] = Ph;
      int CQq = CQ5 + 8; // S10
      _data_f32_[CQq >> 2] = Pk;
      int CQA = CQ5 + 12; // S11
      _data_f32_[CQA >> 2] = Pn;
      float PH = OZ * JJ;
      float PI = P2 * JJ;
      float PK = IX + PH;
      _data_f32_[CLY >> 2] = PK;
      float PN = J1 + PI;
      _data_f32_[CM8 >> 2] = PN;
  }
}

void main()
{
  substep_c44_03();
}
