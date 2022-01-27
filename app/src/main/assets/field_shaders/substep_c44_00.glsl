#version 310 es
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void substep_c44_00()
{ // serial
  int BWD = 0;
  int Cpv = int(0);
  int BWF = BWD + 229416 * Cpv; // S0
  int BWG = BWF + 0; // S1
  int BWI = BWG + 4 * Cpv; // S1
  int BWJ = BWI + 0; // S2
  int C = _data_i32_[BWJ >> 2];
  int D = 0;
  _gtmp_i32_[D >> 2] = C;
}

void main()
{
  substep_c44_00();
}
