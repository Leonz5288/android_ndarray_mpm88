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
  int D2H = 0;
  int D2J = D2H + 229416 * Q; // S0
  int D2K = D2J + 8; // S27
  int D2N = D2K + 8 * Q; // S27
  int D2O = D2N + 0; // S28
  _data_f32_[D2O >> 2] = S;
  int D2Y = D2N + 4; // S29
  _data_f32_[D2Y >> 2] = P;
  float W = float(1.0);
  int D5Z = int(1);
  int D37 = D2K + 8 * D5Z; // S27
  int D38 = D37 + 0; // S28
  _data_f32_[D38 >> 2] = W;
  int D3i = D37 + 4; // S29
  _data_f32_[D3i >> 2] = S;
  float As = float(0.15);
  float At = float(0.41);
  int D62 = int(2);
  int D3r = D2K + 8 * D62; // S27
  int D3s = D3r + 0; // S28
  _data_f32_[D3s >> 2] = As;
  int D3C = D3r + 4; // S29
  _data_f32_[D3C >> 2] = At;
  float Az = float(0.85);
  float AA = float(0.25);
  int D65 = int(3);
  int D3L = D2K + 8 * D65; // S27
  int D3M = D3L + 0; // S28
  _data_f32_[D3M >> 2] = Az;
  int D3W = D3L + 4; // S29
  _data_f32_[D3W >> 2] = AA;
}

void main()
{
  init_obstacle_c48_01();
}
