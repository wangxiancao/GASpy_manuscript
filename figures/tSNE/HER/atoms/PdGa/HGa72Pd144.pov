#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -65.60*x up 35.77*y
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

atom(< -4.26,   6.06, -18.03>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #0 
atom(< -3.46,   9.39, -18.91>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #1 
atom(< -0.37,  10.65, -15.70>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #2 
atom(< -4.54,   9.77, -15.45>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #3 
atom(< -1.55,   3.17, -16.87>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #4 
atom(< -0.76,   6.50, -17.76>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #5 
atom(<  2.38,   7.78, -14.50>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #6 
atom(< -1.83,   6.87, -14.31>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #7 
atom(< -2.22,   9.43, -14.37>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #8 
atom(< -2.73,  10.87, -16.95>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #9 
atom(< -2.12,   7.36, -19.79>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #10 
atom(< -5.60,   8.10, -17.15>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #11 
atom(< -2.74,   7.94, -16.87>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #12 
atom(< -2.24,  12.28, -14.63>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #13 
atom(< -0.64,   9.36, -18.24>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #14 
atom(< -4.31,  10.91, -13.15>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #15 
atom(<  0.49,   6.53, -13.26>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #16 
atom(<  0.00,   7.98, -15.81>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #17 
atom(<  0.58,   4.47, -18.64>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #18 
atom(< -2.89,   5.21, -15.99>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #19 
atom(< -0.04,   5.05, -15.72>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #20 
atom(<  0.47,   9.42, -13.49>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #21 
atom(<  2.07,   6.47, -17.09>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #22 
atom(< -1.61,   8.03, -11.99>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #23 
atom(< -7.99,   4.04, -14.34>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #24 
atom(< -7.19,   7.37, -15.22>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #25 
atom(< -4.10,   8.63, -12.01>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #26 
atom(< -8.27,   7.75, -11.77>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #27 
atom(< -5.28,   1.15, -13.18>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #28 
atom(< -4.49,   4.48, -14.07>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #29 
atom(< -1.35,   5.76, -10.81>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #30 
atom(< -5.56,   4.85, -10.62>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #31 
atom(< -5.94,   7.41, -10.68>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #32 
atom(< -6.46,   8.84, -13.26>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #33 
atom(< -5.85,   5.34, -16.10>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #34 
atom(< -9.33,   6.08, -13.46>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #35 
atom(< -6.47,   5.92, -13.18>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #36 
atom(< -5.97,  10.26, -10.94>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #37 
atom(< -4.37,   7.34, -14.56>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #38 
atom(< -8.04,   8.88,  -9.47>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #39 
atom(< -3.24,   4.50,  -9.57>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #40 
atom(< -3.73,   5.95, -12.12>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #41 
atom(< -3.14,   2.45, -14.95>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #42 
atom(< -6.62,   3.18, -12.31>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #43 
atom(< -3.77,   3.03, -12.03>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #44 
atom(< -3.25,   7.40,  -9.80>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #45 
atom(< -1.66,   4.45, -13.40>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #46 
atom(< -5.34,   6.01,  -8.30>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #47 
atom(<-11.71,   2.02, -10.65>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #48 
atom(<-10.92,   5.35, -11.53>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #49 
atom(< -7.83,   6.61,  -8.32>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #50 
atom(<-12.00,   5.73,  -8.08>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #51 
atom(< -9.01,  -0.87,  -9.50>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #52 
atom(< -8.21,   2.46, -10.38>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #53 
atom(< -5.08,   3.74,  -7.12>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #54 
atom(< -9.29,   2.83,  -6.93>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #55 
atom(< -9.67,   5.39,  -6.99>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #56 
atom(<-10.19,   6.82,  -9.58>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #57 
atom(< -9.58,   3.32, -12.41>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #58 
atom(<-13.06,   4.06,  -9.77>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #59 
atom(<-10.20,   3.90,  -9.49>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #60 
atom(< -9.70,   8.24,  -7.25>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #61 
atom(< -8.10,   5.32, -10.87>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #62 
atom(<-11.77,   6.86,  -5.78>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #63 
atom(< -6.96,   2.48,  -5.88>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #64 
atom(< -7.45,   3.93,  -8.44>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #65 
atom(< -6.87,   0.43, -11.26>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #66 
atom(<-10.35,   1.16,  -8.62>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #67 
atom(< -7.49,   1.01,  -8.34>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #68 
atom(< -6.98,   5.38,  -6.11>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #69 
atom(< -5.39,   2.43,  -9.72>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #70 
atom(< -9.07,   3.99,  -4.61>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #71 
atom(<  1.16,   0.28, -15.72>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #72 
atom(<  1.95,   3.61, -16.61>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #73 
atom(<  5.04,   4.87, -13.39>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #74 
atom(<  0.87,   3.99, -13.15>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #75 
atom(<  3.86,  -2.61, -14.57>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #76 
atom(<  4.66,   0.72, -15.45>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #77 
atom(<  7.79,   2.00, -12.19>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #78 
atom(<  3.58,   1.09, -12.00>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #79 
atom(<  3.20,   3.65, -12.06>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #80 
atom(<  2.69,   5.08, -14.65>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #81 
atom(<  3.29,   1.58, -17.48>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #82 
atom(< -0.19,   2.31, -14.84>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #83 
atom(<  2.67,   2.16, -14.56>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #84 
atom(<  3.18,   6.50, -12.32>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #85 
atom(<  4.77,   3.58, -15.94>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #86 
atom(<  1.10,   5.12, -10.85>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #87 
atom(<  5.91,   0.74, -10.95>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #88 
atom(<  5.42,   2.19, -13.51>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #89 
atom(<  6.00,  -1.32, -16.33>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #90 
atom(<  2.52,  -0.58, -13.69>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #91 
atom(<  5.38,  -0.73, -13.41>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #92 
atom(<  5.89,   3.64, -11.18>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #93 
atom(<  7.48,   0.69, -14.79>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #94 
atom(<  3.80,   2.25,  -9.68>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #95 
atom(<  0.53,   1.81,  -6.78>, 0.28, rgb <1.00, 1.00, 1.00>, 0.0, simple) // #96 
atom(< -2.57,  -1.74, -12.03>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #97 
atom(< -1.78,   1.59, -12.92>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #98 
atom(<  1.31,   2.85,  -9.70>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #99 
atom(< -2.86,   1.97,  -9.46>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #100 
atom(<  0.13,  -4.63, -10.88>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #101 
atom(<  0.93,  -1.30, -11.76>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #102 
atom(<  4.07,  -0.02,  -8.51>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #103 
atom(< -0.15,  -0.93,  -8.31>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #104 
atom(< -0.53,   1.63,  -8.37>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #105 
atom(< -1.04,   3.06, -10.96>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #106 
atom(< -0.44,  -0.45, -13.79>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #107 
atom(< -3.91,   0.29, -11.15>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #108 
atom(< -1.06,   0.14, -10.87>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #109 
atom(< -0.55,   4.48,  -8.63>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #110 
atom(<  1.05,   1.56, -12.25>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #111 
atom(< -2.63,   3.10,  -7.16>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #112 
atom(<  2.18,  -1.28,  -7.26>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #113 
atom(<  1.69,   0.17,  -9.82>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #114 
atom(<  2.27,  -3.34, -12.64>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #115 
atom(< -1.21,  -2.60, -10.00>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #116 
atom(<  1.65,  -2.75,  -9.72>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #117 
atom(<  2.16,   1.62,  -7.50>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #118 
atom(<  3.75,  -1.33, -11.10>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #119 
atom(<  0.07,   0.23,  -5.99>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #120 
atom(< -6.30,  -3.76,  -8.34>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #121 
atom(< -5.51,  -0.43,  -9.23>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #122 
atom(< -2.42,   0.83,  -6.02>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #123 
atom(< -6.58,  -0.05,  -5.77>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #124 
atom(< -3.59,  -6.65,  -7.19>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #125 
atom(< -2.80,  -3.32,  -8.08>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #126 
atom(<  0.34,  -2.04,  -4.82>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #127 
atom(< -3.88,  -2.95,  -4.62>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #128 
atom(< -4.26,  -0.39,  -4.69>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #129 
atom(< -4.77,   1.04,  -7.27>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #130 
atom(< -4.17,  -2.47, -10.11>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #131 
atom(< -7.64,  -1.73,  -7.47>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #132 
atom(< -4.79,  -1.88,  -7.19>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #133 
atom(< -4.28,   2.46,  -4.95>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #134 
atom(< -2.68,  -0.46,  -8.56>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #135 
atom(< -6.36,   1.08,  -3.47>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #136 
atom(< -1.55,  -3.30,  -3.58>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #137 
atom(< -2.04,  -1.85,  -6.13>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #138 
atom(< -1.46,  -5.36,  -8.95>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #139 
atom(< -4.94,  -4.62,  -6.31>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #140 
atom(< -2.08,  -4.77,  -6.03>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #141 
atom(< -1.57,  -0.40,  -3.81>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #142 
atom(<  0.02,  -3.35,  -7.41>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #143 
atom(< -3.65,  -1.79,  -2.30>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #144 
atom(<  6.57,  -5.50, -13.42>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #145 
atom(<  7.36,  -2.17, -14.30>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #146 
atom(< 10.46,  -0.91, -11.09>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #147 
atom(<  6.29,  -1.79, -10.84>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #148 
atom(<  9.28,  -8.39, -12.26>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #149 
atom(< 10.07,  -5.06, -13.15>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #150 
atom(< 13.21,  -3.79,  -9.89>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #151 
atom(<  9.00,  -4.70,  -9.70>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #152 
atom(<  8.61,  -2.13,  -9.76>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #153 
atom(<  8.10,  -0.70, -12.34>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #154 
atom(<  8.70,  -4.21, -15.18>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #155 
atom(<  5.23,  -3.47, -12.54>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #156 
atom(<  8.08,  -3.62, -12.26>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #157 
atom(<  8.59,   0.72, -10.02>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #158 
atom(< 10.19,  -2.20, -13.63>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #159 
atom(<  6.51,  -0.66,  -8.54>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #160 
atom(< 11.32,  -5.04,  -8.65>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #161 
atom(< 10.83,  -3.59, -11.20>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #162 
atom(< 11.41,  -7.10, -14.03>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #163 
atom(<  7.93,  -6.36, -11.39>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #164 
atom(< 10.79,  -6.52, -11.11>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #165 
atom(< 11.30,  -2.15,  -8.88>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #166 
atom(< 12.89,  -5.09, -12.48>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #167 
atom(<  9.22,  -3.54,  -7.38>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #168 
atom(<  2.84,  -7.52,  -9.73>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #169 
atom(<  3.63,  -4.19, -10.61>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #170 
atom(<  6.73,  -2.93,  -7.40>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #171 
atom(<  2.56,  -3.82,  -7.16>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #172 
atom(<  5.55, -10.42,  -8.58>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #173 
atom(<  6.34,  -7.08,  -9.46>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #174 
atom(<  9.48,  -5.81,  -6.20>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #175 
atom(<  5.27,  -6.72,  -6.01>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #176 
atom(<  4.88,  -4.15,  -6.07>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #177 
atom(<  4.37,  -2.72,  -8.65>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #178 
atom(<  4.98,  -6.23, -11.49>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #179 
atom(<  1.50,  -5.49,  -8.85>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #180 
atom(<  4.35,  -5.65,  -8.57>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #181 
atom(<  4.86,  -1.30,  -6.33>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #182 
atom(<  6.46,  -4.22,  -9.95>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #183 
atom(<  2.79,  -2.68,  -4.86>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #184 
atom(<  7.59,  -7.06,  -4.96>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #185 
atom(<  7.10,  -5.61,  -7.51>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #186 
atom(<  7.68,  -9.12, -10.34>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #187 
atom(<  4.21,  -8.38,  -7.70>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #188 
atom(<  7.06,  -8.54,  -7.42>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #189 
atom(<  7.57,  -4.17,  -5.19>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #190 
atom(<  9.17,  -7.12,  -8.79>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #191 
atom(<  5.49,  -5.56,  -3.69>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #192 
atom(< -0.89,  -9.54,  -6.04>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #193 
atom(< -0.10,  -6.21,  -6.92>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #194 
atom(<  3.00,  -4.95,  -3.71>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #195 
atom(< -1.17,  -5.84,  -3.47>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #196 
atom(<  1.82, -12.44,  -4.89>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #197 
atom(<  2.61,  -9.10,  -5.77>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #198 
atom(<  5.75,  -7.83,  -2.51>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #199 
atom(<  1.54,  -8.74,  -2.32>, 1.09, rgb <0.76, 0.56, 0.56>, 0.0, simple) // #200 
atom(<  1.15,  -6.17,  -2.38>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #201 
atom(<  0.64,  -4.74,  -4.97>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #202 
atom(<  1.25,  -8.25,  -7.80>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #203 
atom(< -2.23,  -7.51,  -5.16>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #204 
atom(<  0.63,  -7.67,  -4.88>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #205 
atom(<  1.13,  -3.32,  -2.64>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #206 
atom(<  2.73,  -6.25,  -6.26>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #207 
atom(< -0.94,  -4.70,  -1.17>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #208 
atom(<  3.86,  -9.08,  -1.27>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #209 
atom(<  3.37,  -7.63,  -3.83>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #210 
atom(<  3.95, -11.14,  -6.65>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #211 
atom(<  0.48, -10.40,  -4.01>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #212 
atom(<  3.33, -10.56,  -3.73>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #213 
atom(<  3.84,  -6.19,  -1.50>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #214 
atom(<  5.44,  -9.14,  -5.11>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #215 
atom(<  1.76,  -7.58,   0.00>, 1.24, rgb <0.00, 0.41, 0.52>, 0.0, simple) // #216 
