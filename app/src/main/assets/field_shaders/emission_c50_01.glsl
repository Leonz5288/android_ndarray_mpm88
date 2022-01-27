#version 310 es
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
precision highp float;
layout(std430, binding = 0) buffer data_i32 { int _data_i32_[];}; 
layout(std430, binding = 0) buffer data_f32 { float _data_f32_[];}; 
layout(std430, binding = 1) buffer gtmp_i32 { int _gtmp_i32_[];}; 
layout(std430, binding = 1) buffer gtmp_f32 { float _gtmp_f32_[];}; 

uvec4 _rand_; void _init_rand() { int RAND_STATE = 1024; uint i = (7654321u + gl_GlobalInvocationID.x) * (1234567u + 9723451u * uint(_gtmp_i32_[RAND_STATE])); _rand_.x = 123456789u * i * 1000000007u; _rand_.y = 362436069u; _rand_.z = 521288629u; _rand_.w = 88675123u; _gtmp_i32_[RAND_STATE] += 1; } uint _rand_u32() { uint t = _rand_.x ^ (_rand_.x << 11); _rand_.xyz = _rand_.yzw; _rand_.w = (_rand_.w ^ (_rand_.w >> 19)) ^ (t ^ (t >> 8)); return _rand_.w * 1000000007u; } float _rand_f32() { return float(_rand_u32()) * (1.0 / 4294967296.0); } int _rand_i32() { return int(_rand_u32()); }
const float inf = 1.0f / 0.0f;
const float nan = 0.0f / 0.0f;
void emission_c50_01()
{ // range for
  // range known at runtime
  int _beg = _gtmp_i32_[0 >> 2], _end = _gtmp_i32_[4 >> 2];
  int _sid0 = int(gl_GlobalInvocationID.x);
  for (int _sid = _sid0; _sid < (_end - _beg); _sid += int(gl_WorkGroupSize.x * gl_NumWorkGroups.x)) {
    int _itv = _beg + _sid;
      int K = _itv;
      float L = _rand_f32();
      float M = float(0);
      float N = float(0.1);
      float O = L * N;
      float P = float(0.07);
      float Q = O + P;
      M = Q;
      float S = _rand_f32();
      float T = float(0.5);
      int U = -int(S > T);
      int V = int(1);
      int W = U & V;
      if (W != 0) {
      } else {
        float Y = float(-Q);
        M = Y;
      }
      float Aq = _rand_f32();
      float Ar = M;
      float As = Ar + T;
      float At = float(0.2);
      float Au = Aq * At;
      float Av = float(0.7);
      float Aw = Au + Av;
      int CWt = 0;
      int CYk = int(0);
      int CWv = CWt + 229416 * CYk; // S0
      int CWw = CWv + 65576; // S9
      int CXS = int(4095);
      int CXT = K & CXS;
      int CWz = CWw + 8 * CXT; // S9
      int CWA = CWz + 0; // S10
      _data_f32_[CWA >> 2] = As;
      int CWK = CWz + 4; // S11
      _data_f32_[CWK >> 2] = Aw;
      float AC = float(0.0);
      int CWQ = CWv + 98344; // S12
      int CWT = CWQ + 8 * CXT; // S12
      int CWU = CWT + 0; // S13
      _data_f32_[CWU >> 2] = AC;
      float AF = float(-1.0);
      int CX4 = CWT + 4; // S14
      _data_f32_[CX4 >> 2] = AF;
      float AI = float(1.0);
      int CXa = CWv + 32808; // S20
      int CXd = CXa + 4 * CXT; // S20
      int CXe = CXd + 0; // S21
      _data_f32_[CXe >> 2] = AI;
      float AL = float(6.1035156e-05);
      int CXk = CWv + 40; // S5
      int CXn = CXk + 4 * CXT; // S5
      int CXo = CXn + 0; // S6
      _data_f32_[CXo >> 2] = AL;
      int CXu = CWv + 16424; // S7
      int CXx = CXu + 4 * CXT; // S7
      int CXy = CXx + 0; // S8
      _data_f32_[CXy >> 2] = AL;
  }
}

void main()
{
  _init_rand();
  emission_c50_01();
}
