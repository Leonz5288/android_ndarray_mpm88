#version 310 es
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void emission_c50_00()
{ // serial
  int CDP = 0;
  int CFN = int(0);
  int CDR = CDP + 229416 * CFN; // S0
  int CDS = CDR + 0; // S1
  int CDU = CDS + 4 * CFN; // S1
  int CDV = CDU + 0; // S2
  int C = _data_i32_[CDV >> 2];
  int D = 0;
  _gtmp_i32_[D >> 2] = C;
  int F = int(50);
  int G = C + F;
  int H = 4;
  _gtmp_i32_[H >> 2] = G;
}

void main()
{
  emission_c50_00();
}
