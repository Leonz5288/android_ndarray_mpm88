#version 310 es
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 

const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void init_obstacle_c48_01()
{ // serial
  float P = float(0.23);
  int Q = int(0);
  float S = float(0.0);
  int CKc = 0;
  int CKe = CKc + 229416 * Q; // S0
  int CKf = CKe + 8; // S27
  int CKi = CKf + 8 * Q; // S27
  int CKj = CKi + 0; // S28
  _data_f32_[CKj >> 2] = S;
  int CKt = CKi + 4; // S29
  _data_f32_[CKt >> 2] = P;
  float W = float(1.0);
  int CNu = int(1);
  int CKC = CKf + 8 * CNu; // S27
  int CKD = CKC + 0; // S28
  _data_f32_[CKD >> 2] = W;
  int CKN = CKC + 4; // S29
  _data_f32_[CKN >> 2] = S;
  float As = float(0.15);
  float At = float(0.41);
  int CNx = int(2);
  int CKW = CKf + 8 * CNx; // S27
  int CKX = CKW + 0; // S28
  _data_f32_[CKX >> 2] = As;
  int CL7 = CKW + 4; // S29
  _data_f32_[CL7 >> 2] = At;
  float Az = float(0.85);
  float AA = float(0.25);
  int CNA = int(3);
  int CLg = CKf + 8 * CNA; // S27
  int CLh = CLg + 0; // S28
  _data_f32_[CLh >> 2] = Az;
  int CLr = CLg + 4; // S29
  _data_f32_[CLr >> 2] = AA;
}

void main()
{
  init_obstacle_c48_01();
}
