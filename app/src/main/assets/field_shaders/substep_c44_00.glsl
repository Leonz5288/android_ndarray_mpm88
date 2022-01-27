#version 310 es
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_00()
{ // serial
  int Cf8 = 0;
  int CI0 = int(0);
  int Cfa = Cf8 + 229416 * CI0; // S0
  int Cfb = Cfa + 0; // S1
  int Cfd = Cfb + 4 * CI0; // S1
  int Cfe = Cfd + 0; // S2
  int C = _data_i32_[Cfe >> 2];
  int D = 0;
  _gtmp_i32_[D >> 2] = C;
}

void main()
{
  substep_c44_00();
}
