#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -36.02*x up 29.46*y
  direction 1.00*z
  location <0,0,50.00> look_at <0,0,0>}
light_source {<  2.00,   3.00,  40.00> color White
  area_light <0.70, 0, 0>, <0, 0.70, 0>, 3, 3
  adaptive 1 jitter}

#declare simple = finish {phong 0.7}
#declare pale = finish {ambient .5 diffuse .85 roughness .001 specular 0.200 }
#declare intermediate = finish {ambient 0.3 diffuse 0.6 specular 0.10 roughness 0.04 }
#declare vmd = finish {ambient .0 diffuse .65 phong 0.1 phong_size 40. specular 0.500 }
#declare jmol = finish {ambient .2 diffuse .6 specular 1 roughness .001 metallic}
#declare ase2 = finish {ambient 0.05 brilliance 3 diffuse 0.6 metallic specular 0.70 roughness 0.04 reflection 0.15}
#declare ase3 = finish {ambient .15 brilliance 2 diffuse .6 metallic specular 1. roughness .001 reflection .0}
#declare glass = finish {ambient .05 diffuse .3 specular 1. roughness .001}
#declare glass2 = finish {ambient .0 diffuse .3 specular 1. reflection .25 roughness .001}
#declare Rcell = 0.070;
#declare Rbond = 0.100;

#macro atom(LOC, R, COL, TRANS, FIN)
  sphere{LOC, R texture{pigment{color COL transmit TRANS} finish{FIN}}}
#end
#macro constrain(LOC, R, COL, TRANS FIN)
union{torus{R, Rcell rotate 45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
      torus{R, Rcell rotate -45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
      translate LOC}
#end

atom(<  6.17,  -0.55,  -8.26>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #0 
atom(<  6.41,  -3.31,  -7.55>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #1 
atom(<  7.16,  -4.07, -10.25>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #2 
atom(<  7.47,  -6.89,  -9.63>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #3 
atom(<  7.38,  -1.35,  -6.19>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #4 
atom(<  5.08,  -2.52,  -9.59>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #5 
atom(<  7.60,   0.85,  -9.89>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #6 
atom(<  8.49,  -4.86,  -8.21>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #7 
atom(<  6.14,  -6.10, -11.67>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #8 
atom(<  8.64,  -2.64, -11.95>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #9 
atom(<  5.74,  -2.60,  -4.66>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #10 
atom(<  6.09,  -7.74,   0.00>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #11 
atom(<  3.31,  -6.10,  -4.38>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #12 
atom(<  3.61,  -3.95,  -7.88>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #13 
atom(<  6.41,  -5.56,  -3.74>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #14 
atom(<  2.69,  -5.42,  -1.51>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #15 
atom(<  0.13,  -3.88,  -5.61>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #16 
atom(<  0.37,  -6.64,  -4.91>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #17 
atom(<  5.35,  -5.41,  -1.23>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #18 
atom(<  2.84,  -3.25,  -5.19>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #19 
atom(<  6.90,  -6.23,  -6.66>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #20 
atom(<  7.14, -11.31,  -2.19>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #21 
atom(<  4.41,  -9.68,  -6.38>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #22 
atom(<  4.67,  -7.53,  -9.96>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #23 
atom(<  7.39,  -9.15,  -5.78>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #24 
atom(<  3.84,  -9.03,  -3.41>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #25 
atom(<  1.11,  -7.40,  -7.60>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #26 
atom(<  1.43, -10.22,  -6.98>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #27 
atom(<  6.65,  -8.39,  -3.08>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #28 
atom(<  3.92,  -6.77,  -7.27>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #29 
atom(<  4.97,  -4.78,  -5.89>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #30 
atom(<  7.64,  -6.38,  -1.60>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #31 
atom(<  1.34,  -4.68,  -3.55>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #32 
atom(< -0.96,  -5.85,  -6.94>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #33 
atom(<  7.85,  -4.19,  -5.37>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #34 
atom(<  4.25,  -4.11,  -3.14>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #35 
atom(<  1.56,  -2.48,  -7.24>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #36 
atom(<  5.99,  -8.32,  -7.92>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #37 
atom(<  2.44,  -8.20,  -5.56>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #38 
atom(<  0.10,  -9.43,  -9.02>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #39 
atom(<  5.32,  -7.60,  -5.12>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #40 
atom(<  2.59,  -5.97,  -9.31>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #41 
atom(<  8.82,   7.43, -15.97>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #42 
atom(<  6.39,   3.93, -15.68>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #43 
atom(<  6.69,   6.08, -19.19>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #44 
atom(<  5.77,   4.61, -12.81>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #45 
atom(<  3.21,   6.15, -16.91>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #46 
atom(<  3.45,   3.39, -16.21>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #47 
atom(<  8.43,   4.62, -12.54>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #48 
atom(<  5.92,   6.78, -16.49>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #49 
atom(<  7.49,   0.35, -17.68>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #50 
atom(<  7.75,   2.50, -21.26>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #51 
atom(<  6.92,   1.00, -14.72>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #52 
atom(<  4.20,   2.63, -18.90>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #53 
atom(<  4.51,  -0.19, -18.28>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #54 
atom(<  7.00,   3.27, -18.57>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #55 
atom(<  8.05,   5.25, -17.19>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #56 
atom(<  4.42,   5.35, -14.85>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #57 
atom(<  2.12,   4.18, -18.25>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #58 
atom(<  7.33,   5.92, -14.44>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #59 
atom(<  4.64,   7.55, -18.54>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #60 
atom(<  9.08,   1.71, -19.22>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #61 
atom(<  5.52,   1.84, -16.86>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #62 
atom(<  3.18,   0.60, -20.32>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #63 
atom(<  8.40,   2.43, -16.42>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #64 
atom(<  5.67,   4.06, -20.61>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #65 
atom(<  2.77,   4.10, -13.32>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #66 
atom(<  6.67,  -1.16, -11.13>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #67 
atom(<  3.13,  -1.04,  -8.66>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #68 
atom(<  0.34,   0.60, -13.04>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #69 
atom(<  0.64,   2.75, -16.54>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #70 
atom(<  3.45,   1.14, -12.39>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #71 
atom(< -0.28,   1.28, -10.16>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #72 
atom(< -2.83,   2.82, -14.27>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #73 
atom(< -2.59,   0.06, -13.56>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #74 
atom(<  6.23,   1.79, -11.93>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #75 
atom(<  2.39,   1.29,  -9.89>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #76 
atom(< -0.12,   3.45, -13.84>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #77 
atom(<  3.94,   0.47, -15.32>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #78 
atom(<  7.73,  -4.73, -13.21>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #79 
atom(<  4.18,  -4.61, -10.85>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #80 
atom(<  1.45,  -2.98, -15.03>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #81 
atom(<  1.70,  -0.83, -18.62>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #82 
atom(<  4.43,  -2.45, -14.43>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #83 
atom(<  0.88,  -2.33, -12.07>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #84 
atom(< -1.85,  -0.70, -16.25>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #85 
atom(< -1.54,  -3.52, -15.64>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #86 
atom(<  7.24,  -1.81, -14.10>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #87 
atom(<  3.68,  -1.69, -11.74>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #88 
atom(<  0.96,  -0.07, -15.92>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #89 
atom(<  2.00,   1.92, -14.54>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #90 
atom(<  4.67,   0.32, -10.25>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #91 
atom(<  8.25,   0.21, -12.68>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #92 
atom(< -1.62,   2.02, -12.20>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #93 
atom(< -3.92,   0.85, -15.60>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #94 
atom(<  4.89,   2.51, -14.02>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #95 
atom(<  1.29,   2.59, -11.79>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #96 
atom(< -1.41,   4.22, -15.90>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #97 
atom(<  3.03,  -1.62, -16.58>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #98 
atom(<  5.76,  -3.24, -12.39>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #99 
atom(< -0.52,  -1.50, -14.22>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #100 
atom(< -2.86,  -2.73, -17.68>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #101 
atom(<  5.91,  -1.02, -16.14>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #102 
atom(<  2.36,  -0.90, -13.78>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #103 
atom(< -0.37,   0.73, -17.96>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #104 
atom(< -0.57,   1.67,  -8.23>, 0.68, rgb <0.56, 0.56, 0.56>, 0.0, simple) // #105 
atom(< -0.67,   1.94,  -7.10>, 0.59, rgb <1.00, 0.05, 0.05>, 0.0, simple) // #106 
atom(< -3.27,   0.77, -10.67>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #107 
atom(<  0.62,  -4.49,  -8.49>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #108 
atom(< -2.91,  -4.37,  -6.01>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #109 
atom(< -5.70,  -2.73, -10.39>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #110 
atom(< -5.40,  -0.58, -13.89>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #111 
atom(< -2.59,  -2.19,  -9.75>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #112 
atom(< -6.32,  -2.05,  -7.52>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #113 
atom(< -8.88,  -0.51, -11.62>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #114 
atom(< -8.64,  -3.27, -10.91>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #115 
atom(<  0.18,  -1.54,  -9.28>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #116 
atom(< -3.65,  -2.04,  -7.24>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #117 
atom(< -6.17,   0.12, -11.20>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #118 
atom(< -2.10,  -2.86, -12.67>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #119 
atom(<  1.68,  -8.06, -10.57>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #120 
atom(< -1.87,  -7.94,  -8.20>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #121 
atom(< -4.60,  -6.31, -12.39>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #122 
atom(< -4.34,  -4.16, -15.97>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #123 
atom(< -1.61,  -5.78, -11.78>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #124 
atom(< -5.17,  -5.66,  -9.42>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #125 
atom(< -7.89,  -4.03, -13.61>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #126 
atom(< -7.58,  -6.85, -12.99>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #127 
atom(<  1.19,  -5.14, -11.45>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #128 
atom(< -2.36,  -5.02,  -9.09>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #129 
atom(< -5.09,  -3.40, -13.28>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #130 
atom(< -4.04,  -1.41, -11.89>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #131 
atom(< -1.37,  -3.02,  -7.61>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #132 
atom(<  2.21,  -3.12, -10.03>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #133 
atom(< -7.67,  -1.31,  -9.55>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #134 
atom(< -1.15,  -0.82, -11.37>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #135 
atom(< -4.75,  -0.74,  -9.14>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #136 
atom(< -7.45,   0.89, -13.25>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #137 
atom(< -3.01,  -4.95, -13.93>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #138 
atom(< -0.29,  -6.57,  -9.75>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #139 
atom(<  3.27,  -6.69, -12.11>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #140 
atom(< -6.56,  -4.83, -11.57>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #141 
atom(< -8.91,  -6.06, -15.03>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #142 
atom(< -0.14,  -4.35, -13.49>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #143 
atom(< -3.69,  -4.23, -11.13>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #144 
atom(< -6.42,  -2.60, -15.31>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #145 
atom(< -0.19,  10.80, -21.97>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #146 
atom(<  3.71,   5.54, -19.79>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #147 
atom(<  0.17,   5.66, -17.31>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #148 
atom(< -2.62,   7.30, -21.69>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #149 
atom(< -2.32,   9.45, -25.19>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #150 
atom(<  0.49,   7.84, -21.05>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #151 
atom(< -3.24,   7.98, -18.82>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #152 
atom(< -5.80,   9.52, -22.92>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #153 
atom(< -5.56,   6.76, -22.22>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #154 
atom(<  3.26,   8.49, -20.59>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #155 
atom(< -0.57,   7.99, -18.55>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #156 
atom(< -3.08,  10.15, -22.50>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #157 
atom(<  0.98,   7.17, -23.97>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #158 
atom(<  4.76,   1.97, -21.87>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #159 
atom(<  1.21,   2.09, -19.50>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #160 
atom(< -1.51,   3.72, -23.69>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #161 
atom(< -1.26,   5.87, -27.27>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #162 
atom(<  1.47,   4.25, -23.09>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #163 
atom(< -2.08,   4.37, -20.72>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #164 
atom(< -4.81,   6.00, -24.91>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #165 
atom(< -4.50,   3.18, -24.29>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #166 
atom(<  4.27,   4.89, -22.75>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #167 
atom(<  0.72,   5.01, -20.39>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #168 
atom(< -2.01,   6.64, -24.58>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #169 
atom(< -0.96,   8.62, -23.20>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #170 
atom(<  1.71,   7.02, -18.91>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #171 
atom(<  5.29,   6.91, -21.33>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #172 
atom(< -4.59,   8.72, -20.86>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #173 
atom(< -6.89,   7.55, -24.25>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #174 
atom(<  1.93,   9.21, -22.68>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #175 
atom(< -1.67,   9.29, -20.45>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #176 
atom(< -4.37,  10.92, -24.55>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #177 
atom(<  0.07,   5.08, -25.23>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #178 
atom(<  2.80,   3.46, -21.05>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #179 
atom(<  6.35,   3.34, -23.41>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #180 
atom(< -3.48,   5.20, -22.87>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #181 
atom(< -5.83,   3.97, -26.33>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #182 
atom(<  2.95,   5.68, -24.79>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #183 
atom(< -0.61,   5.80, -22.43>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #184 
atom(< -3.33,   7.43, -26.62>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #185 
atom(< -6.23,   7.47, -19.33>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #186 
atom(< -2.34,   2.21, -17.14>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #187 
atom(< -5.88,   2.33, -14.66>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #188 
atom(< -8.66,   3.97, -19.04>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #189 
atom(< -8.36,   6.12, -22.55>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #190 
atom(< -5.56,   4.51, -18.40>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #191 
atom(< -2.78,   5.16, -17.94>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #192 
atom(< -6.62,   4.66, -15.90>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #193 
atom(< -5.07,   3.84, -21.33>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #194 
atom(< -1.28,  -1.36, -19.22>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #195 
atom(< -4.83,  -1.24, -16.86>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #196 
atom(< -7.56,   0.39, -21.04>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #197 
atom(< -7.30,   2.54, -24.63>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #198 
atom(< -4.58,   0.92, -20.44>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #199 
atom(< -8.13,   1.04, -18.08>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #200 
atom(< -1.77,   1.56, -20.11>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #201 
atom(< -5.32,   1.68, -17.75>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #202 
atom(< -8.05,   3.30, -21.93>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #203 
atom(< -7.00,   5.29, -20.55>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #204 
atom(< -4.33,   3.68, -16.26>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #205 
atom(< -0.76,   3.58, -18.69>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #206 
atom(< -4.12,   5.88, -20.03>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #207 
atom(< -7.72,   5.96, -17.80>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #208 
atom(< -5.98,   1.75, -22.59>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #209 
atom(< -3.25,   0.13, -18.40>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #210 
atom(<  0.30,   0.01, -20.76>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #211 
atom(< -3.10,   2.35, -22.15>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #212 
atom(< -6.65,   2.47, -19.78>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #213 
atom(< -8.38,  -1.12, -14.50>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #214 
atom(< -8.82,   1.83, -15.29>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #215 
atom(< -7.32,  -4.69, -16.57>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #216 
atom(< -7.81,  -1.77, -17.46>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #217 
atom(< -6.80,   0.25, -16.04>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #218 
atom(< -5.74,  -3.32, -18.12>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #219 