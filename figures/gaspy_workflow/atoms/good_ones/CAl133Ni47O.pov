#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -39.45*x up 21.29*y
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

atom(< -1.15,   2.99, -28.59>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #0 
atom(<  3.12,   2.17, -19.64>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #1 
atom(<  1.92,  -2.11, -25.60>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #2 
atom(<  1.01,   1.98, -30.11>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #3 
atom(<  5.28,   1.11, -21.16>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #4 
atom(<  2.26,   6.20, -24.12>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #5 
atom(<  1.48,   3.63, -27.78>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #6 
atom(<  4.55,  -1.46, -24.79>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #7 
atom(< -0.76,  -0.01, -29.35>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #8 
atom(<  3.51,  -0.88, -20.40>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #9 
atom(<  0.47,   4.24, -23.39>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #10 
atom(<  1.60,  -0.89, -28.20>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #11 
atom(< -1.47,   4.21, -31.19>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #12 
atom(<  2.80,   3.34, -22.24>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #13 
atom(< -2.51,   4.79, -26.79>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #14 
atom(<  1.87,   3.95, -17.83>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #15 
atom(<  0.56,  -0.30, -23.80>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #16 
atom(<  2.07,   0.76, -25.87>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #17 
atom(< -1.00,   5.86, -28.86>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #18 
atom(<  3.24,   4.99, -19.88>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #19 
atom(< -2.42,   6.29, -24.42>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #20 
atom(< -3.24,   2.22, -30.43>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #21 
atom(<  1.03,   1.35, -21.47>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #22 
atom(<  3.04,  -2.53, -22.73>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #23 
atom(< -0.03,   2.57, -25.72>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #24 
atom(< -1.02,  -0.04, -26.47>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #25 
atom(< -4.09,   5.05, -29.46>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #26 
atom(<  0.26,   4.25, -20.48>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #27 
atom(<  0.09,   5.41, -25.94>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #28 
atom(< -1.08,   1.21, -31.95>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #29 
atom(<  3.19,   0.34, -22.99>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #30 
atom(<  3.06,   3.37, -25.11>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #31 
atom(<  3.75,  -0.64, -27.01>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #32 
atom(<  0.68,   4.46, -30.00>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #33 
atom(<  4.92,   3.56, -21.09>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #34 
atom(<  0.56,   1.35, -27.78>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #35 
atom(< -2.51,   6.44, -30.76>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #36 
atom(<  1.91,   5.51, -21.86>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #37 
atom(<  1.36,  -1.13, -21.59>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #38 
atom(< -1.71,   3.96, -24.57>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #39 
atom(<  1.48,   1.98, -23.81>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #40 
atom(<  5.80,   2.75, -18.98>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #41 
atom(<  4.83,  -1.17, -14.85>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #42 
atom(<  6.34,  -0.11, -16.92>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #43 
atom(<  4.92,   0.33, -12.48>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #44 
atom(<  4.36,   2.01, -16.80>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #45 
atom(<  3.25,  -0.91, -17.52>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #46 
atom(<  7.43,  -0.55, -14.00>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #47 
atom(<  7.32,   2.42, -16.38>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #48 
atom(<  8.02,  -1.51, -18.06>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #49 
atom(<  4.84,   0.48, -18.82>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #50 
atom(<  2.43,   2.91, -15.72>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #51 
atom(<  5.72,   1.22, -14.73>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #52 
atom(< -5.40,   1.53, -26.70>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #53 
atom(< -1.14,   0.72, -17.75>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #54 
atom(< -2.33,  -3.56, -23.71>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #55 
atom(< -3.24,   0.53, -28.22>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #56 
atom(<  1.03,  -0.34, -19.27>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #57 
atom(< -1.99,   4.74, -22.23>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #58 
atom(< -2.77,   2.18, -25.89>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #59 
atom(<  0.30,  -2.92, -22.91>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #60 
atom(< -5.02,  -1.46, -27.46>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #61 
atom(< -0.75,  -2.33, -18.51>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #62 
atom(< -3.79,   2.78, -21.50>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #63 
atom(< -2.65,  -2.34, -26.31>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #64 
atom(< -5.72,   2.75, -29.30>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #65 
atom(< -1.45,   1.88, -20.35>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #66 
atom(< -6.77,   3.33, -24.90>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #67 
atom(< -2.39,   2.50, -15.94>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #68 
atom(< -3.70,  -1.76, -21.92>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #69 
atom(< -2.18,  -0.69, -23.98>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #70 
atom(< -5.25,   4.40, -26.97>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #71 
atom(< -1.01,   3.53, -17.99>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #72 
atom(< -6.67,   4.84, -22.53>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #73 
atom(< -7.50,   0.76, -28.54>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #74 
atom(< -3.23,  -0.11, -19.59>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #75 
atom(< -7.24,   6.52, -26.85>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #76 
atom(< -1.22,  -3.98, -20.84>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #77 
atom(< -4.29,   1.11, -23.83>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #78 
atom(< -5.28,  -1.50, -24.59>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #79 
atom(< -4.00,   2.80, -18.59>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #80 
atom(< -4.17,   3.95, -24.05>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #81 
atom(< -5.34,  -0.25, -30.06>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #82 
atom(< -1.07,  -1.12, -21.11>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #83 
atom(< -4.28,   6.92, -26.43>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #84 
atom(<  1.88,  -3.18, -20.24>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #85 
atom(< -1.19,   1.91, -23.22>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #86 
atom(< -0.51,  -2.09, -25.12>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #87 
atom(< -3.58,   3.00, -28.11>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #88 
atom(<  0.67,   2.10, -19.20>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #89 
atom(< -3.69,  -0.11, -25.89>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #90 
atom(< -6.76,   4.98, -28.88>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #91 
atom(< -2.35,   4.05, -19.97>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #92 
atom(< -2.89,  -2.59, -19.70>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #93 
atom(< -5.96,   2.51, -22.69>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #94 
atom(< -5.87,   5.73, -24.78>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #95 
atom(<  0.29,  -4.57, -18.93>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #96 
atom(< -2.78,   0.53, -21.92>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #97 
atom(<  1.59,   1.28, -11.88>, 0.68, rgb <0.56, 0.56, 0.56>, 0.0, simple) // #98 
atom(<  1.61,   2.28, -11.25>, 0.59, rgb <1.00, 0.05, 0.05>, 0.0, simple) // #99 
atom(<  1.94,  -4.43, -14.76>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #100 
atom(<  5.35,  -1.22, -10.29>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #101 
atom(<  1.55,   1.29, -17.09>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #102 
atom(<  3.55,  -3.18,  -9.56>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #103 
atom(<  1.62,  -3.21, -17.36>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #104 
atom(<  0.57,  -2.63, -12.96>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #105 
atom(<  2.09,  -1.56, -15.03>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #106 
atom(<  0.67,  -1.13, -10.59>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #107 
atom(< -0.16,  -5.20, -16.60>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #108 
atom(<  0.10,   0.56, -14.91>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #109 
atom(<  3.05,  -4.85, -11.89>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #110 
atom(< -1.01,  -2.37, -15.63>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #111 
atom(<  3.34,  -3.17,  -6.65>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #112 
atom(<  3.17,  -2.01, -12.11>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #113 
atom(<  2.00,  -6.21, -18.12>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #114 
atom(<  3.06,   0.96, -14.49>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #115 
atom(<  3.76,  -2.96, -16.17>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #116 
atom(<  3.65,  -6.07, -13.95>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #117 
atom(<  0.58,  -0.98, -16.94>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #118 
atom(< -1.83,   1.46, -13.83>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #119 
atom(<  1.38,  -3.46, -10.75>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #120 
atom(<  1.47,  -0.23, -12.84>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #121 
atom(< -5.39,  -0.74, -15.86>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #122 
atom(< -6.59,  -5.02, -21.83>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #123 
atom(< -7.50,  -0.93, -26.34>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #124 
atom(< -3.23,  -1.80, -17.38>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #125 
atom(< -6.25,   3.29, -20.34>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #126 
atom(< -7.03,   0.72, -24.01>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #127 
atom(< -3.96,  -4.37, -21.02>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #128 
atom(< -5.00,  -3.79, -16.62>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #129 
atom(< -8.05,   1.32, -19.62>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #130 
atom(< -6.91,  -3.80, -24.42>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #131 
atom(< -5.71,   0.42, -18.46>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #132 
atom(< -6.64,   1.04, -14.05>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #133 
atom(< -7.95,  -3.22, -20.03>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #134 
atom(< -6.44,  -2.15, -22.09>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #135 
atom(< -5.27,   2.07, -16.11>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #136 
atom(< -7.48,  -1.57, -17.70>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #137 
atom(< -5.47,  -5.44, -18.95>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #138 
atom(< -5.32,  -2.57, -19.22>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #139 
atom(< -2.38,  -4.64, -18.35>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #140 
atom(< -5.45,   0.45, -21.34>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #141 
atom(< -4.76,  -3.55, -23.24>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #142 
atom(< -7.83,   1.54, -26.22>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #143 
atom(< -3.59,   0.65, -17.31>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #144 
atom(< -7.95,  -1.57, -24.00>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #145 
atom(< -6.60,   2.60, -18.08>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #146 
atom(< -7.15,  -4.04, -17.81>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #147 
atom(< -3.96,  -6.02, -17.05>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #148 
atom(< -7.03,  -0.93, -20.03>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #149 
atom(< -2.32,  -5.89, -12.87>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #150 
atom(<  1.95,  -6.70,  -3.92>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #151 
atom(< -0.16,  -6.89, -14.40>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #152 
atom(<  1.09,  -2.68,  -8.40>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #153 
atom(<  0.31,  -5.24, -12.07>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #154 
atom(< -2.71,  -0.16, -15.20>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #155 
atom(< -0.71,  -4.64,  -7.68>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #156 
atom(< -2.64,  -4.67, -15.47>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #157 
atom(<  1.63,  -5.54,  -6.52>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #158 
atom(< -3.68,  -4.09, -11.08>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #159 
atom(<  0.70,  -4.92,  -2.11>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #160 
atom(< -2.17,  -3.02, -13.14>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #161 
atom(<  2.07,  -3.89,  -4.17>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #162 
atom(< -3.59,  -2.58,  -8.70>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #163 
atom(< -4.41,  -6.66, -14.71>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #164 
atom(< -4.16,  -0.90, -13.02>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #165 
atom(< -1.20,  -6.31, -10.00>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #166 
atom(< -5.26,  -3.82, -13.75>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #167 
atom(< -0.92,  -4.62,  -4.76>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #168 
atom(< -1.09,  -3.47, -10.22>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #169 
atom(< -1.20,  -0.50, -12.60>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #170 
atom(<  1.89,  -5.51,  -9.40>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #171 
atom(< -0.49,  -4.42, -14.28>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #172 
atom(<  3.75,  -5.32,  -5.37>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #173 
atom(< -3.68,  -2.44, -15.05>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #174 
atom(<  0.74,  -3.37,  -6.14>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #175 
atom(< -6.08,  -0.00, -11.94>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #176 
atom(< -2.88,  -4.91,  -8.86>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #177 
atom(< -2.79,  -1.69, -10.96>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #178 
atom(<  0.31,  -6.89,  -8.09>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #179 
atom(<  3.19,  -6.86,  -1.08>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #180 
atom(<  1.26,  -5.96,   0.00>, 1.10, rgb <0.31, 0.82, 0.31>, 0.0, simple) // #181 
