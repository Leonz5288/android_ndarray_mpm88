#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_02()
{ // range for
  // range known at runtime
  int _beg = 0, _end = _gtmp_i32_[0 >> 2];
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int Aq = _itv;
      int CfR = 0;
      int CIq = int(0);
      int CfT = CfR + 229416 * CIq; // S0
      int CfU = CfT + 65576; // S9
      int CxE = int(4095);
      int CxF = Aq & CxE;
      int CIs = int(1);
      int CfX = CfU + 8 * CxF; // S9
      int CfY = CfX + 0; // S10
      float As = _data_f32_[CfY >> 2];
      float At = float(64.0);
      float Au = As * At;
      int Cg8 = CfX + 4; // S11
      float Aw = _data_f32_[Cg8 >> 2];
      float Ax = Aw * At;
      float Ay = float(0.5);
      float Az = Au - Ay;
      float AA = Ax - Ay;
      int AB = int(Az);
      int AC = int(AA);
      float AD = float(AB);
      float AE = Au - AD;
      float AF = float(AC);
      float AG = Ax - AF;
      float AH = float(1.5);
      float AI = AH - AE;
      float AJ = AH - AG;
      float AK = AI * AI;
      float AL = AJ * AJ;
      float AM = AK * Ay;
      float AN = AL * Ay;
      float AO = float(1.0);
      float AP = AE - AO;
      float AQ = AG - AO;
      float AR = AP * AP;
      float AS = AQ * AQ;
      float AT = float(0.75);
      float AU = AT - AR;
      float AV = AT - AS;
      float AW = AE - Ay;
      float AX = AG - Ay;
      float AY = AW * AW;
      float AZ = AX * AX;
      float B0 = AY * Ay;
      float B1 = AZ * Ay;
      int Cge = CfT + 40; // S5
      int Cgh = Cge + 4 * CxF; // S5
      int Cgi = Cgh + 0; // S6
      float B3 = _data_f32_[Cgi >> 2];
      float B4 = float(-0.625);
      float B5 = B3 * B4;
      int Cgo = CfT + 32808; // S20
      int Cgr = Cgo + 4 * CxF; // S20
      int Cgs = Cgr + 0; // S21
      float B7 = _data_f32_[Cgs >> 2];
      float B8 = B7 - AO;
      float B9 = B5 * B8;
      float Ba = float(4096.0);
      float Bb = B9 * Ba;
      int Cgy = CfT + 16424; // S7
      int CgB = Cgy + 4 * CxF; // S7
      int CgC = CgB + 0; // S8
      float Bd = _data_f32_[CgC >> 2];
      int CgI = CfT + 163880; // S15
      int CgL = CgI + 16 * CxF; // S15
      int CgM = CgL + 0; // S16
      float Bf = _data_f32_[CgM >> 2];
      float Bg = Bd * Bf;
      int CgW = CgL + 4; // S17
      float Bi = _data_f32_[CgW >> 2];
      float Bj = Bd * Bi;
      int Ch6 = CgL + 8; // S18
      float Bl = _data_f32_[Ch6 >> 2];
      float Bm = Bd * Bl;
      int Chg = CgL + 12; // S19
      float Bo = _data_f32_[Chg >> 2];
      float Bp = Bd * Bo;
      float Bq = Bb + Bg;
      float Br = Bb + Bp;
      float Bs = float(0.0);
      float Bt = Bs - AE;
      float Bu = Bs - AG;
      float Bv = float(0.015625);
      float Bw = Bt * Bv;
      float Bx = Bu * Bv;
      float By = AM * AN;
      int Chm = CfT + 98344; // S12
      int Chp = Chm + 8 * CxF; // S12
      int Chq = Chp + 0; // S13
      float BA = _data_f32_[Chq >> 2];
      float BB = float(6.1035156e-05);
      float BC = BA * BB;
      int ChA = Chp + 4; // S14
      float BE = _data_f32_[ChA >> 2];
      float BF = BE * BB;
      float BG = Bq * Bw;
      float BH = Bj * Bx;
      float BI = BG + BH;
      float BJ = Bm * Bw;
      float BK = Br * Bx;
      float BL = BJ + BK;
      float BM = BC + BI;
      float BN = BF + BL;
      float BO = By * BM;
      float BP = By * BN;
      float BQ = float(16777216.0);
      float BR = BO * BQ;
      float BS = BP * BQ;
      float BT = BR + Ay;
      float BU = BS + Ay;
      float BV = float(floor(BT));
      float BW = float(floor(BU));
      int BX = int(BV);
      int BY = int(BW);
      int ChH = CfT + 131112; // S22
      int Cym = int(63);
      int Cyn = AB & Cym;
      int Cyr = AC & Cym;
      int CTz = int(6);
      int CTA = Cyn << CTz;
      int CJq = Cyr + CTA;
      int ChL = ChH + 8 * CJq; // S22
      int ChM = ChL + 0; // S23
      int C0;
      { // Begin Atomic Op
      C0 = atomicAdd(_data_i32_[ChM >> 2], BX);
      } // End Atomic Op
      int ChY = ChL + 4; // S24
      int C2;
      { // Begin Atomic Op
      C2 = atomicAdd(_data_i32_[ChY >> 2], BY);
      } // End Atomic Op
      float C3 = float(67108864.0);
      float C4 = By * C3;
      float C5 = C4 + Ay;
      float C6 = float(floor(C5));
      int C7 = int(C6);
      int Ci5 = CfT + 49192; // S25
      int Ci9 = Ci5 + 4 * CJq; // S25
      int Cia = Ci9 + 0; // S26
      int C9;
      { // Begin Atomic Op
      C9 = atomicAdd(_data_i32_[Cia >> 2], C7);
      } // End Atomic Op
      float Ca = AO - AG;
      float Cb = Ca * Bv;
      float Cc = AM * AV;
      int Ce = AC + CIs;
      float Cf = Bj * Cb;
      float Cg = BG + Cf;
      float Ch = Br * Cb;
      float Ci = BJ + Ch;
      float Cj = BC + Cg;
      float Ck = BF + Ci;
      float Cl = Cc * Cj;
      float Cm = Cc * Ck;
      float Cn = Cl * BQ;
      float Co = Cm * BQ;
      float Cp = Cn + Ay;
      float Cq = Co + Ay;
      float Cr = float(floor(Cp));
      float Cs = float(floor(Cq));
      int Ct = int(Cr);
      int Cu = int(Cs);
      int CyP = Ce & Cym;
      int CJO = CyP + CTA;
      int Cil = ChH + 8 * CJO; // S22
      int Cim = Cil + 0; // S23
      int Cw;
      { // Begin Atomic Op
      Cw = atomicAdd(_data_i32_[Cim >> 2], Ct);
      } // End Atomic Op
      int Ciy = Cil + 4; // S24
      int Cy;
      { // Begin Atomic Op
      Cy = atomicAdd(_data_i32_[Ciy >> 2], Cu);
      } // End Atomic Op
      float Cz = Cc * C3;
      float CA = Cz + Ay;
      float CB = float(floor(CA));
      int CC = int(CB);
      int CiJ = Ci5 + 4 * CJO; // S25
      int CiK = CiJ + 0; // S26
      int CE;
      { // Begin Atomic Op
      CE = atomicAdd(_data_i32_[CiK >> 2], CC);
      } // End Atomic Op
      float CF = float(2.0);
      float CG = CF - AG;
      float CH = CG * Bv;
      float CI = AM * B1;
      int CJ = int(2);
      int CK = AC + CJ;
      float CL = Bj * CH;
      float CM = BG + CL;
      float CN = Br * CH;
      float CO = BJ + CN;
      float CP = BC + CM;
      float CQ = BF + CO;
      float CR = CI * CP;
      float CS = CI * CQ;
      float CT = CR * BQ;
      float CU = CS * BQ;
      float CV = CT + Ay;
      float CW = CU + Ay;
      float CX = float(floor(CV));
      float CY = float(floor(CW));
      int CZ = int(CX);
      int D0 = int(CY);
      int Czd = CK & Cym;
      int CKc = Czd + CTA;
      int CiV = ChH + 8 * CKc; // S22
      int CiW = CiV + 0; // S23
      int D2;
      { // Begin Atomic Op
      D2 = atomicAdd(_data_i32_[CiW >> 2], CZ);
      } // End Atomic Op
      int Cj8 = CiV + 4; // S24
      int D4;
      { // Begin Atomic Op
      D4 = atomicAdd(_data_i32_[Cj8 >> 2], D0);
      } // End Atomic Op
      float D5 = CI * C3;
      float D6 = D5 + Ay;
      float D7 = float(floor(D6));
      int D8 = int(D7);
      int Cjj = Ci5 + 4 * CKc; // S25
      int Cjk = Cjj + 0; // S26
      int Da;
      { // Begin Atomic Op
      Da = atomicAdd(_data_i32_[Cjk >> 2], D8);
      } // End Atomic Op
      float Db = AO - AE;
      float Dc = Db * Bv;
      float Dd = AU * AN;
      int De = AB + CIs;
      float Df = Bq * Dc;
      float Dg = Df + BH;
      float Dh = Bm * Dc;
      float Di = Dh + BK;
      float Dj = BC + Dg;
      float Dk = BF + Di;
      float Dl = Dd * Dj;
      float Dm = Dd * Dk;
      float Dn = Dl * BQ;
      float Do = Dm * BQ;
      float Dp = Dn + Ay;
      float Dq = Do + Ay;
      float Dr = float(floor(Dp));
      float Ds = float(floor(Dq));
      int Dt = int(Dr);
      int Du = int(Ds);
      int Czx = De & Cym;
      int CTC = Czx << CTz;
      int CKA = Cyr + CTC;
      int Cjv = ChH + 8 * CKA; // S22
      int Cjw = Cjv + 0; // S23
      int Dw;
      { // Begin Atomic Op
      Dw = atomicAdd(_data_i32_[Cjw >> 2], Dt);
      } // End Atomic Op
      int CjI = Cjv + 4; // S24
      int Dy;
      { // Begin Atomic Op
      Dy = atomicAdd(_data_i32_[CjI >> 2], Du);
      } // End Atomic Op
      float Dz = Dd * C3;
      float DA = Dz + Ay;
      float DB = float(floor(DA));
      int DC = int(DB);
      int CjT = Ci5 + 4 * CKA; // S25
      int CjU = CjT + 0; // S26
      int DE;
      { // Begin Atomic Op
      DE = atomicAdd(_data_i32_[CjU >> 2], DC);
      } // End Atomic Op
      float DF = AU * AV;
      float DG = Df + Cf;
      float DH = Dh + Ch;
      float DI = BC + DG;
      float DJ = BF + DH;
      float DK = DF * DI;
      float DL = DF * DJ;
      float DM = DK * BQ;
      float DN = DL * BQ;
      float DO = DM + Ay;
      float DP = DN + Ay;
      float DQ = float(floor(DO));
      float DR = float(floor(DP));
      int DS = int(DQ);
      int DT = int(DR);
      int CKY = CyP + CTC;
      int Ck5 = ChH + 8 * CKY; // S22
      int Ck6 = Ck5 + 0; // S23
      int DV;
      { // Begin Atomic Op
      DV = atomicAdd(_data_i32_[Ck6 >> 2], DS);
      } // End Atomic Op
      int Cki = Ck5 + 4; // S24
      int DX;
      { // Begin Atomic Op
      DX = atomicAdd(_data_i32_[Cki >> 2], DT);
      } // End Atomic Op
      float DY = DF * C3;
      float DZ = DY + Ay;
      float E0 = float(floor(DZ));
      int E1 = int(E0);
      int Ckt = Ci5 + 4 * CKY; // S25
      int Cku = Ckt + 0; // S26
      int E3;
      { // Begin Atomic Op
      E3 = atomicAdd(_data_i32_[Cku >> 2], E1);
      } // End Atomic Op
      float E4 = AU * B1;
      float E5 = Df + CL;
      float E6 = Dh + CN;
      float E7 = BC + E5;
      float E8 = BF + E6;
      float E9 = E4 * E7;
      float Ea = E4 * E8;
      float Eb = E9 * BQ;
      float Ec = Ea * BQ;
      float Ed = Eb + Ay;
      float Ee = Ec + Ay;
      float Ef = float(floor(Ed));
      float Eg = float(floor(Ee));
      int Eh = int(Ef);
      int Ei = int(Eg);
      int CLm = Czd + CTC;
      int CkF = ChH + 8 * CLm; // S22
      int CkG = CkF + 0; // S23
      int Ek;
      { // Begin Atomic Op
      Ek = atomicAdd(_data_i32_[CkG >> 2], Eh);
      } // End Atomic Op
      int CkS = CkF + 4; // S24
      int Em;
      { // Begin Atomic Op
      Em = atomicAdd(_data_i32_[CkS >> 2], Ei);
      } // End Atomic Op
      float En = E4 * C3;
      float Eo = En + Ay;
      float Ep = float(floor(Eo));
      int Eq = int(Ep);
      int Cl3 = Ci5 + 4 * CLm; // S25
      int Cl4 = Cl3 + 0; // S26
      int Es;
      { // Begin Atomic Op
      Es = atomicAdd(_data_i32_[Cl4 >> 2], Eq);
      } // End Atomic Op
      float Et = CF - AE;
      float Eu = Et * Bv;
      float Ev = B0 * AN;
      int Ew = AB + CJ;
      float Ex = Bq * Eu;
      float Ey = Ex + BH;
      float Ez = Bm * Eu;
      float EA = Ez + BK;
      float EB = BC + Ey;
      float EC = BF + EA;
      float ED = Ev * EB;
      float EE = Ev * EC;
      float EF = ED * BQ;
      float EG = EE * BQ;
      float EH = EF + Ay;
      float EI = EG + Ay;
      float EJ = float(floor(EH));
      float EK = float(floor(EI));
      int EL = int(EJ);
      int EM = int(EK);
      int CAH = Ew & Cym;
      int CTE = CAH << CTz;
      int CLK = Cyr + CTE;
      int Clf = ChH + 8 * CLK; // S22
      int Clg = Clf + 0; // S23
      int EO;
      { // Begin Atomic Op
      EO = atomicAdd(_data_i32_[Clg >> 2], EL);
      } // End Atomic Op
      int Cls = Clf + 4; // S24
      int EQ;
      { // Begin Atomic Op
      EQ = atomicAdd(_data_i32_[Cls >> 2], EM);
      } // End Atomic Op
      float ER = Ev * C3;
      float ES = ER + Ay;
      float ET = float(floor(ES));
      int EU = int(ET);
      int ClD = Ci5 + 4 * CLK; // S25
      int ClE = ClD + 0; // S26
      int EW;
      { // Begin Atomic Op
      EW = atomicAdd(_data_i32_[ClE >> 2], EU);
      } // End Atomic Op
      float EX = B0 * AV;
      float EY = Ex + Cf;
      float EZ = Ez + Ch;
      float F0 = BC + EY;
      float F1 = BF + EZ;
      float F2 = EX * F0;
      float F3 = EX * F1;
      float F4 = F2 * BQ;
      float F5 = F3 * BQ;
      float F6 = F4 + Ay;
      float F7 = F5 + Ay;
      float F8 = float(floor(F6));
      float F9 = float(floor(F7));
      int Fa = int(F8);
      int Fb = int(F9);
      int CM8 = CyP + CTE;
      int ClP = ChH + 8 * CM8; // S22
      int ClQ = ClP + 0; // S23
      int Fd;
      { // Begin Atomic Op
      Fd = atomicAdd(_data_i32_[ClQ >> 2], Fa);
      } // End Atomic Op
      int Cm2 = ClP + 4; // S24
      int Ff;
      { // Begin Atomic Op
      Ff = atomicAdd(_data_i32_[Cm2 >> 2], Fb);
      } // End Atomic Op
      float Fg = EX * C3;
      float Fh = Fg + Ay;
      float Fi = float(floor(Fh));
      int Fj = int(Fi);
      int Cmd = Ci5 + 4 * CM8; // S25
      int Cme = Cmd + 0; // S26
      int Fl;
      { // Begin Atomic Op
      Fl = atomicAdd(_data_i32_[Cme >> 2], Fj);
      } // End Atomic Op
      float Fm = B0 * B1;
      float Fn = Ex + CL;
      float Fo = Ez + CN;
      float Fp = BC + Fn;
      float Fq = BF + Fo;
      float Fr = Fm * Fp;
      float Fs = Fm * Fq;
      float Ft = Fr * BQ;
      float Fu = Fs * BQ;
      float Fv = Ft + Ay;
      float Fw = Fu + Ay;
      float Fx = float(floor(Fv));
      float Fy = float(floor(Fw));
      int Fz = int(Fx);
      int FA = int(Fy);
      int CMw = Czd + CTE;
      int Cmp = ChH + 8 * CMw; // S22
      int Cmq = Cmp + 0; // S23
      int FC;
      { // Begin Atomic Op
      FC = atomicAdd(_data_i32_[Cmq >> 2], Fz);
      } // End Atomic Op
      int CmC = Cmp + 4; // S24
      int FE;
      { // Begin Atomic Op
      FE = atomicAdd(_data_i32_[CmC >> 2], FA);
      } // End Atomic Op
      float FF = Fm * C3;
      float FG = FF + Ay;
      float FH = float(floor(FG));
      int FI = int(FH);
      int CmN = Ci5 + 4 * CMw; // S25
      int CmO = CmN + 0; // S26
      int FK;
      { // Begin Atomic Op
      FK = atomicAdd(_data_i32_[CmO >> 2], FI);
      } // End Atomic Op
  }
}

void main()
{
  substep_c44_02();
}
