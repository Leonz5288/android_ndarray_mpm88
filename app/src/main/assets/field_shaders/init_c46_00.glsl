#version 310 es
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void init_c46_00()
{ // serial
  int B = int(0);
  int CGy = 0;
  int CGA = CGy + 229416 * B; // S0
  int CGB = CGA + 0; // S1
  int CGD = CGB + 4 * B; // S1
  int CGE = CGD + 0; // S2
  _data_i32_[CGE >> 2] = B;
}

void main()
{
  init_c46_00();
}
