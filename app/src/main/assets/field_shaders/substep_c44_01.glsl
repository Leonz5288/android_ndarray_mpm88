#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_01()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (4096); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int I = _itv;
      int CeB = int(6);
      int CeC = I >> CeB;
      float T = float(0.0);
      int BWN = 0;
      int Cpx = int(0);
      int BWP = BWN + 229416 * Cpx; // S0
      int BWQ = BWP + 131112; // S22
      int CAY = int(63);
      int CAL = CeC & CAY;
      int CAN = I & CAY;
      int CB3 = CAL << CeB;
      int CpE = CAN + CB3;
      int BWU = BWQ + 8 * CpE; // S22
      int BWV = BWU + 0; // S23
      _data_f32_[BWV >> 2] = T;
      int BX7 = BWU + 4; // S24
      _data_f32_[BX7 >> 2] = T;
      int BXe = BWP + 49192; // S25
      int BXi = BXe + 4 * CpE; // S25
      int BXj = BXi + 0; // S26
      _data_f32_[BXj >> 2] = T;
  }
}

void main()
{
  substep_c44_01();
}
