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
void substep_c44_02()
{ // range for
  // range known at runtime
  int _beg = 0, _end = _gtmp_i32_[0 >> 2];
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int Aq = _itv;
      int BXm = 0;
      int CpV = int(0);
      int BXo = BXm + 229416 * CpV; // S0
      int BXp = BXo + 65576; // S9
      int Cf9 = int(4095);
      int Cfa = Aq & Cf9;
      int CpX = int(1);
      int BXs = BXp + 8 * Cfa; // S9
      int BXt = BXs + 0; // S10
      float As = _data_f32_[BXt >> 2];
      float At = float(64.0);
      float Au = As * At;
      int BXD = BXs + 4; // S11
      float Aw = _data_f32_[BXD >> 2];
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
      int BXJ = BXo + 40; // S5
      int BXM = BXJ + 4 * Cfa; // S5
      int BXN = BXM + 0; // S6
      float B3 = _data_f32_[BXN >> 2];
      float B4 = float(-0.625);
      float B5 = B3 * B4;
      int BXT = BXo + 32808; // S20
      int BXW = BXT + 4 * Cfa; // S20
      int BXX = BXW + 0; // S21
      float B7 = _data_f32_[BXX >> 2];
      float B8 = B7 - AO;
      float B9 = B5 * B8;
      float Ba = float(4096.0);
      float Bb = B9 * Ba;
      int BY3 = BXo + 16424; // S7
      int BY6 = BY3 + 4 * Cfa; // S7
      int BY7 = BY6 + 0; // S8
      float Bd = _data_f32_[BY7 >> 2];
      int BYd = BXo + 163880; // S15
      int BYg = BYd + 16 * Cfa; // S15
      int BYh = BYg + 0; // S16
      float Bf = _data_f32_[BYh >> 2];
      float Bg = Bd * Bf;
      int BYr = BYg + 4; // S17
      float Bi = _data_f32_[BYr >> 2];
      float Bj = Bd * Bi;
      int BYB = BYg + 8; // S18
      float Bl = _data_f32_[BYB >> 2];
      float Bm = Bd * Bl;
      int BYL = BYg + 12; // S19
      float Bo = _data_f32_[BYL >> 2];
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
      int BYR = BXo + 98344; // S12
      int BYU = BYR + 8 * Cfa; // S12
      int BYV = BYU + 0; // S13
      float BA = _data_f32_[BYV >> 2];
      float BB = Bd * BA;
      int BZ5 = BYU + 4; // S14
      float BD = _data_f32_[BZ5 >> 2];
      float BE = Bd * BD;
      float BF = Bq * Bw;
      float BG = Bj * Bx;
      float BH = BF + BG;
      float BI = Bm * Bw;
      float BJ = Br * Bx;
      float BK = BI + BJ;
      float BL = BB + BH;
      float BM = BE + BK;
      float BN = By * BL;
      float BO = By * BM;
      int BZc = BXo + 131112; // S22
      int CfR = int(63);
      int CfS = AB & CfR;
      int CfW = AC & CfR;
      int CB4 = int(6);
      int CB5 = CfS << CB4;
      int CqV = CfW + CB5;
      int BZg = BZc + 8 * CqV; // S22
      int BZh = BZg + 0; // S23
      float BQ;
      { // Begin Atomic Op
      BQ = atomicAdd_data_f32(BZh >> 2, BN);
      } // End Atomic Op
      int BZt = BZg + 4; // S24
      float BS;
      { // Begin Atomic Op
      BS = atomicAdd_data_f32(BZt >> 2, BO);
      } // End Atomic Op
      float BT = By * Bd;
      int BZA = BXo + 49192; // S25
      int BZE = BZA + 4 * CqV; // S25
      int BZF = BZE + 0; // S26
      float BV;
      { // Begin Atomic Op
      BV = atomicAdd_data_f32(BZF >> 2, BT);
      } // End Atomic Op
      float BW = AO - AG;
      float BX = BW * Bv;
      float BY = AM * AV;
      int C0 = AC + CpX;
      float C1 = Bj * BX;
      float C2 = BF + C1;
      float C3 = Br * BX;
      float C4 = BI + C3;
      float C5 = BB + C2;
      float C6 = BE + C4;
      float C7 = BY * C5;
      float C8 = BY * C6;
      int Cgk = C0 & CfR;
      int Crj = Cgk + CB5;
      int BZQ = BZc + 8 * Crj; // S22
      int BZR = BZQ + 0; // S23
      float Ca;
      { // Begin Atomic Op
      Ca = atomicAdd_data_f32(BZR >> 2, C7);
      } // End Atomic Op
      int C03 = BZQ + 4; // S24
      float Cc;
      { // Begin Atomic Op
      Cc = atomicAdd_data_f32(C03 >> 2, C8);
      } // End Atomic Op
      float Cd = BY * Bd;
      int C0e = BZA + 4 * Crj; // S25
      int C0f = C0e + 0; // S26
      float Cf;
      { // Begin Atomic Op
      Cf = atomicAdd_data_f32(C0f >> 2, Cd);
      } // End Atomic Op
      float Cg = float(2.0);
      float Ch = Cg - AG;
      float Ci = Ch * Bv;
      float Cj = AM * B1;
      int Ck = int(2);
      int Cl = AC + Ck;
      float Cm = Bj * Ci;
      float Cn = BF + Cm;
      float Co = Br * Ci;
      float Cp = BI + Co;
      float Cq = BB + Cn;
      float Cr = BE + Cp;
      float Cs = Cj * Cq;
      float Ct = Cj * Cr;
      int CgI = Cl & CfR;
      int CrH = CgI + CB5;
      int C0q = BZc + 8 * CrH; // S22
      int C0r = C0q + 0; // S23
      float Cv;
      { // Begin Atomic Op
      Cv = atomicAdd_data_f32(C0r >> 2, Cs);
      } // End Atomic Op
      int C0D = C0q + 4; // S24
      float Cx;
      { // Begin Atomic Op
      Cx = atomicAdd_data_f32(C0D >> 2, Ct);
      } // End Atomic Op
      float Cy = Cj * Bd;
      int C0O = BZA + 4 * CrH; // S25
      int C0P = C0O + 0; // S26
      float CA;
      { // Begin Atomic Op
      CA = atomicAdd_data_f32(C0P >> 2, Cy);
      } // End Atomic Op
      float CB = AO - AE;
      float CC = CB * Bv;
      float CD = AU * AN;
      int CE = AB + CpX;
      float CF = Bq * CC;
      float CG = CF + BG;
      float CH = Bm * CC;
      float CI = CH + BJ;
      float CJ = BB + CG;
      float CK = BE + CI;
      float CL = CD * CJ;
      float CM = CD * CK;
      int Ch2 = CE & CfR;
      int CB7 = Ch2 << CB4;
      int Cs5 = CfW + CB7;
      int C10 = BZc + 8 * Cs5; // S22
      int C11 = C10 + 0; // S23
      float CO;
      { // Begin Atomic Op
      CO = atomicAdd_data_f32(C11 >> 2, CL);
      } // End Atomic Op
      int C1d = C10 + 4; // S24
      float CQ;
      { // Begin Atomic Op
      CQ = atomicAdd_data_f32(C1d >> 2, CM);
      } // End Atomic Op
      float CR = CD * Bd;
      int C1o = BZA + 4 * Cs5; // S25
      int C1p = C1o + 0; // S26
      float CT;
      { // Begin Atomic Op
      CT = atomicAdd_data_f32(C1p >> 2, CR);
      } // End Atomic Op
      float CU = AU * AV;
      float CV = CF + C1;
      float CW = CH + C3;
      float CX = BB + CV;
      float CY = BE + CW;
      float CZ = CU * CX;
      float D0 = CU * CY;
      int Cst = Cgk + CB7;
      int C1A = BZc + 8 * Cst; // S22
      int C1B = C1A + 0; // S23
      float D2;
      { // Begin Atomic Op
      D2 = atomicAdd_data_f32(C1B >> 2, CZ);
      } // End Atomic Op
      int C1N = C1A + 4; // S24
      float D4;
      { // Begin Atomic Op
      D4 = atomicAdd_data_f32(C1N >> 2, D0);
      } // End Atomic Op
      float D5 = CU * Bd;
      int C1Y = BZA + 4 * Cst; // S25
      int C1Z = C1Y + 0; // S26
      float D7;
      { // Begin Atomic Op
      D7 = atomicAdd_data_f32(C1Z >> 2, D5);
      } // End Atomic Op
      float D8 = AU * B1;
      float D9 = CF + Cm;
      float Da = CH + Co;
      float Db = BB + D9;
      float Dc = BE + Da;
      float Dd = D8 * Db;
      float De = D8 * Dc;
      int CsR = CgI + CB7;
      int C2a = BZc + 8 * CsR; // S22
      int C2b = C2a + 0; // S23
      float Dg;
      { // Begin Atomic Op
      Dg = atomicAdd_data_f32(C2b >> 2, Dd);
      } // End Atomic Op
      int C2n = C2a + 4; // S24
      float Di;
      { // Begin Atomic Op
      Di = atomicAdd_data_f32(C2n >> 2, De);
      } // End Atomic Op
      float Dj = D8 * Bd;
      int C2y = BZA + 4 * CsR; // S25
      int C2z = C2y + 0; // S26
      float Dl;
      { // Begin Atomic Op
      Dl = atomicAdd_data_f32(C2z >> 2, Dj);
      } // End Atomic Op
      float Dm = Cg - AE;
      float Dn = Dm * Bv;
      float Do = B0 * AN;
      int Dp = AB + Ck;
      float Dq = Bq * Dn;
      float Dr = Dq + BG;
      float Ds = Bm * Dn;
      float Dt = Ds + BJ;
      float Du = BB + Dr;
      float Dv = BE + Dt;
      float Dw = Do * Du;
      float Dx = Do * Dv;
      int Cic = Dp & CfR;
      int CB9 = Cic << CB4;
      int Ctf = CfW + CB9;
      int C2K = BZc + 8 * Ctf; // S22
      int C2L = C2K + 0; // S23
      float Dz;
      { // Begin Atomic Op
      Dz = atomicAdd_data_f32(C2L >> 2, Dw);
      } // End Atomic Op
      int C2X = C2K + 4; // S24
      float DB;
      { // Begin Atomic Op
      DB = atomicAdd_data_f32(C2X >> 2, Dx);
      } // End Atomic Op
      float DC = Do * Bd;
      int C38 = BZA + 4 * Ctf; // S25
      int C39 = C38 + 0; // S26
      float DE;
      { // Begin Atomic Op
      DE = atomicAdd_data_f32(C39 >> 2, DC);
      } // End Atomic Op
      float DF = B0 * AV;
      float DG = Dq + C1;
      float DH = Ds + C3;
      float DI = BB + DG;
      float DJ = BE + DH;
      float DK = DF * DI;
      float DL = DF * DJ;
      int CtD = Cgk + CB9;
      int C3k = BZc + 8 * CtD; // S22
      int C3l = C3k + 0; // S23
      float DN;
      { // Begin Atomic Op
      DN = atomicAdd_data_f32(C3l >> 2, DK);
      } // End Atomic Op
      int C3x = C3k + 4; // S24
      float DP;
      { // Begin Atomic Op
      DP = atomicAdd_data_f32(C3x >> 2, DL);
      } // End Atomic Op
      float DQ = DF * Bd;
      int C3I = BZA + 4 * CtD; // S25
      int C3J = C3I + 0; // S26
      float DS;
      { // Begin Atomic Op
      DS = atomicAdd_data_f32(C3J >> 2, DQ);
      } // End Atomic Op
      float DT = B0 * B1;
      float DU = Dq + Cm;
      float DV = Ds + Co;
      float DW = BB + DU;
      float DX = BE + DV;
      float DY = DT * DW;
      float DZ = DT * DX;
      int Cu1 = CgI + CB9;
      int C3U = BZc + 8 * Cu1; // S22
      int C3V = C3U + 0; // S23
      float E1;
      { // Begin Atomic Op
      E1 = atomicAdd_data_f32(C3V >> 2, DY);
      } // End Atomic Op
      int C47 = C3U + 4; // S24
      float E3;
      { // Begin Atomic Op
      E3 = atomicAdd_data_f32(C47 >> 2, DZ);
      } // End Atomic Op
      float E4 = DT * Bd;
      int C4i = BZA + 4 * Cu1; // S25
      int C4j = C4i + 0; // S26
      float E6;
      { // Begin Atomic Op
      E6 = atomicAdd_data_f32(C4j >> 2, E4);
      } // End Atomic Op
  }
}

void main()
{
  substep_c44_02();
}
