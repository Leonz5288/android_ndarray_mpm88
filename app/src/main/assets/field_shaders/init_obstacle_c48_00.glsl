#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void init_obstacle_c48_00()
{ // range for
  // range known at compile time
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (2); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = 0 + _sid;
      int B = _itv;
      int C = int(1);
      int D = B << C;
      float F = float(0.0);
      int CJy = 0;
      int CMf = int(0);
      int CJA = CJy + 229416 * CMf; // S0
      int CJB = CJA + 8; // S27
      int CLv = int(3);
      int CLw = D & CLv;
      int CJE = CJB + 8 * CLw; // S27
      int CJF = CJE + 0; // S28
      _data_f32_[CJF >> 2] = F;
      int CJP = CJE + 4; // S29
      _data_f32_[CJP >> 2] = F;
      int J = D + C;
      int CLE = J & CLv;
      int CJY = CJB + 8 * CLE; // S27
      int CJZ = CJY + 0; // S28
      _data_f32_[CJZ >> 2] = F;
      int CK9 = CJY + 4; // S29
      _data_f32_[CK9 >> 2] = F;
  }
}

void main()
{
  init_obstacle_c48_00();
}
