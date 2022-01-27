#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_01()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (4096); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int I = _itv;
      int Cx6 = int(6);
      int Cx7 = I >> Cx6;
      int T = int(0);
      int Cfi = 0;
      int Cfk = Cfi + 229416 * T; // S0
      int Cfl = Cfk + 131112; // S22
      int CTt = int(63);
      int CTg = Cx7 & CTt;
      int CTi = I & CTt;
      int CTy = CTg << Cx6;
      int CI9 = CTi + CTy;
      int Cfp = Cfl + 8 * CI9; // S22
      int Cfq = Cfp + 0; // S23
      _data_i32_[Cfq >> 2] = T;
      int CfC = Cfp + 4; // S24
      _data_i32_[CfC >> 2] = T;
      int CfJ = Cfk + 49192; // S25
      int CfN = CfJ + 4 * CI9; // S25
      int CfO = CfN + 0; // S26
      _data_i32_[CfO >> 2] = T;
  }
}

void main()
{
  substep_c44_01();
}
