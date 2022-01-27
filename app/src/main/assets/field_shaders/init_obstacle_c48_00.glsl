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
      int D23 = 0;
      int D4K = int(0);
      int D25 = D23 + 229416 * D4K; // S0
      int D26 = D25 + 8; // S27
      int D40 = int(3);
      int D41 = D & D40;
      int D29 = D26 + 8 * D41; // S27
      int D2a = D29 + 0; // S28
      _data_f32_[D2a >> 2] = F;
      int D2k = D29 + 4; // S29
      _data_f32_[D2k >> 2] = F;
      int J = D + C;
      int D49 = J & D40;
      int D2t = D26 + 8 * D49; // S27
      int D2u = D2t + 0; // S28
      _data_f32_[D2u >> 2] = F;
      int D2E = D2t + 4; // S29
      _data_f32_[D2E >> 2] = F;
  }
}

void main()
{
  init_obstacle_c48_00();
}
