#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -49.08*x up 40.14*y
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

atom(<  8.94,   3.07, -11.07>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #0 
atom(< 12.37,   3.69, -11.08>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #1 
atom(<  8.19,   4.90, -14.35>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #2 
atom(< 13.21,   1.92,  -7.92>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #3 
atom(< 12.40,   3.13, -14.00>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #4 
atom(< 15.64,   0.82,  -9.39>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #5 
atom(<  9.52,  -0.26, -13.29>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #6 
atom(< 13.13,   0.30, -13.10>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #7 
atom(<  8.88,   1.54, -16.40>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #8 
atom(< 13.77,  -1.50,  -9.98>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #9 
atom(< 13.04,  -0.25, -16.12>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #10 
atom(< 16.27,  -2.53, -11.45>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #11 
atom(< 10.99,   2.49,  -9.27>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #12 
atom(< 10.48,   4.36, -12.86>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #13 
atom(< 14.99,   3.23,  -9.62>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #14 
atom(<  6.45,   3.50, -12.60>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #15 
atom(<  7.66,   0.95, -11.86>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #16 
atom(< 14.33,   2.57, -12.41>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #17 
atom(<  8.75,   2.38, -13.95>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #18 
atom(< 13.25,   1.01, -10.41>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #19 
atom(< 14.24,  -0.59,  -7.55>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #20 
atom(< 10.94,   1.65, -12.11>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #21 
atom(< 11.50,  -1.00, -11.49>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #22 
atom(< 11.15,   1.04, -14.89>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #23 
atom(< 15.54,  -0.06, -11.79>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #24 
atom(<  7.11,   0.10, -14.60>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #25 
atom(<  8.30,  -2.50, -13.90>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #26 
atom(< 14.97,  -0.85, -14.56>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #27 
atom(<  9.35,  -1.01, -16.00>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #28 
atom(< 13.93,  -2.34, -12.47>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #29 
atom(< 17.67,  -1.10, -13.34>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #30 
atom(< 11.64,  -1.67, -14.23>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #31 
atom(< -0.32,   4.78, -16.65>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #32 
atom(<  3.12,   5.40, -16.65>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #33 
atom(< -1.07,   6.61, -19.92>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #34 
atom(<  3.95,   3.63, -13.50>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #35 
atom(<  3.14,   4.84, -19.57>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #36 
atom(<  6.38,   2.53, -14.96>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #37 
atom(<  0.26,   1.45, -18.86>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #38 
atom(<  3.87,   2.01, -18.67>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #39 
atom(< -0.38,   3.25, -21.97>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #40 
atom(<  4.51,   0.21, -15.55>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #41 
atom(<  3.78,   1.46, -21.69>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #42 
atom(<  7.01,  -0.82, -17.02>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #43 
atom(<  1.73,   4.20, -14.84>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #44 
atom(<  1.22,   6.07, -18.43>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #45 
atom(<  5.73,   4.94, -15.19>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #46 
atom(< -2.81,   5.21, -18.17>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #47 
atom(< -1.60,   2.66, -17.43>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #48 
atom(<  5.07,   4.28, -17.98>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #49 
atom(< -0.51,   4.09, -19.52>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #50 
atom(<  3.99,   2.72, -15.98>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #51 
atom(<  4.98,   1.12, -13.12>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #52 
atom(<  1.68,   3.36, -17.68>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #53 
atom(<  2.24,   0.71, -17.06>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #54 
atom(<  1.89,   2.75, -20.47>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #55 
atom(<  6.28,   1.65, -17.36>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #56 
atom(< -2.15,   1.81, -20.17>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #57 
atom(< -0.96,  -0.79, -19.47>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #58 
atom(<  5.72,   0.86, -20.14>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #59 
atom(<  0.09,   0.70, -21.57>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #60 
atom(<  4.67,  -0.62, -18.04>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #61 
atom(<  8.41,   0.61, -18.91>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #62 
atom(<  2.38,   0.04, -19.81>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #63 
atom(< -9.58,   6.49, -22.22>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #64 
atom(< -6.14,   7.11, -22.22>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #65 
atom(<-10.33,   8.32, -25.49>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #66 
atom(< -5.31,   5.34, -19.07>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #67 
atom(< -6.12,   6.55, -25.15>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #68 
atom(< -2.88,   4.24, -20.53>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #69 
atom(< -9.00,   3.16, -24.43>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #70 
atom(< -5.39,   3.72, -24.24>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #71 
atom(< -9.64,   4.96, -27.54>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #72 
atom(< -4.75,   1.92, -21.13>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #73 
atom(< -5.48,   3.17, -27.26>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #74 
atom(< -2.25,   0.89, -22.59>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #75 
atom(< -7.53,   5.91, -20.41>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #76 
atom(< -8.04,   7.79, -24.00>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #77 
atom(< -3.53,   6.66, -20.76>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #78 
atom(<-12.07,   6.93, -23.74>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #79 
atom(<-10.86,   4.37, -23.01>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #80 
atom(< -4.19,   5.99, -23.55>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #81 
atom(< -9.76,   5.80, -25.09>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #82 
atom(< -5.27,   4.43, -21.56>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #83 
atom(< -4.27,   2.83, -18.69>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #84 
atom(< -7.58,   5.07, -23.25>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #85 
atom(< -7.02,   2.42, -22.63>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #86 
atom(< -7.37,   4.46, -26.04>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #87 
atom(< -2.98,   3.36, -22.93>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #88 
atom(<-11.41,   3.52, -25.74>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #89 
atom(<-10.22,   0.93, -25.05>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #90 
atom(< -3.54,   2.57, -25.71>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #91 
atom(< -9.17,   2.41, -27.14>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #92 
atom(< -4.59,   1.09, -23.61>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #93 
atom(< -0.85,   2.32, -24.48>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #94 
atom(< -6.88,   1.75, -25.38>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #95 
atom(<  6.15,   0.22,  -7.30>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #96 
atom(<  9.58,   0.84,  -7.30>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #97 
atom(<  5.39,   2.05, -10.58>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #98 
atom(< 10.41,  -0.93,  -4.15>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #99 
atom(<  9.61,   0.29, -10.23>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #100 
atom(< 12.85,  -2.02,  -5.62>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #101 
atom(<  6.72,  -3.10,  -9.51>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #102 
atom(< 10.33,  -2.55,  -9.32>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #103 
atom(<  6.08,  -1.30, -12.63>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #104 
atom(< 10.97,  -4.35,  -6.21>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #105 
atom(< 10.24,  -3.09, -12.35>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #106 
atom(< 13.47,  -5.37,  -7.67>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #107 
atom(<  8.19,  -0.36,  -5.50>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #108 
atom(<  7.68,   1.52,  -9.08>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #109 
atom(< 12.19,   0.39,  -5.84>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #110 
atom(<  3.65,   0.66,  -8.83>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #111 
atom(<  4.86,  -1.90,  -8.09>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #112 
atom(< 11.53,  -0.27,  -8.63>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #113 
atom(<  5.96,  -0.47, -10.18>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #114 
atom(< 10.45,  -1.84,  -6.64>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #115 
atom(< 11.45,  -3.43,  -3.77>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #116 
atom(<  8.14,  -1.19,  -8.34>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #117 
atom(<  8.70,  -3.84,  -7.72>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #118 
atom(<  8.35,  -1.81, -11.12>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #119 
atom(< 12.74,  -2.91,  -8.01>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #120 
atom(<  4.31,  -2.74, -10.82>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #121 
atom(<  5.50,  -5.34, -10.13>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #122 
atom(< 12.18,  -3.69, -10.79>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #123 
atom(<  6.55,  -3.85, -12.23>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #124 
atom(< 11.13,  -5.18,  -8.69>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #125 
atom(< 14.87,  -3.95,  -9.56>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #126 
atom(<  8.84,  -4.52, -10.46>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #127 
atom(< -1.34,   2.74, -10.31>, 0.28, rgb <1.00, 1.00, 1.00>, 0.0, simple) // #128 
atom(< -3.11,   1.93, -12.87>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #129 
atom(<  0.32,   2.55, -12.88>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #130 
atom(< -3.87,   3.76, -16.15>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #131 
atom(<  1.15,   0.79,  -9.72>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #132 
atom(<  0.35,   2.00, -15.80>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #133 
atom(<  3.59,  -0.31, -11.19>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #134 
atom(< -2.54,  -1.39, -15.08>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #135 
atom(<  1.07,  -0.84, -14.89>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #136 
atom(< -3.18,   0.41, -18.20>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #137 
atom(<  1.71,  -2.64, -11.78>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #138 
atom(<  0.98,  -1.38, -17.92>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #139 
atom(<  4.21,  -3.66, -13.25>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #140 
atom(< -1.07,   1.35, -11.07>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #141 
atom(< -1.58,   3.23, -14.65>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #142 
atom(<  2.94,   2.10, -11.41>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #143 
atom(< -5.61,   2.37, -14.40>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #144 
atom(< -4.40,  -0.18, -13.66>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #145 
atom(<  2.27,   1.44, -14.21>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #146 
atom(< -3.30,   1.24, -15.75>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #147 
atom(<  1.19,  -0.12, -12.21>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #148 
atom(<  2.19,  -1.72,  -9.34>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #149 
atom(< -1.12,   0.52, -13.91>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #150 
atom(< -0.56,  -2.13, -13.29>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #151 
atom(< -0.91,  -0.10, -16.69>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #152 
atom(<  3.48,  -1.20, -13.58>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #153 
atom(< -4.95,  -1.03, -16.40>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #154 
atom(< -3.75,  -3.63, -15.70>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #155 
atom(<  2.92,  -1.98, -16.36>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #156 
atom(< -2.71,  -2.14, -17.80>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #157 
atom(<  1.87,  -3.47, -14.26>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #158 
atom(<  5.61,  -2.24, -15.13>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #159 
atom(< -0.42,  -2.81, -16.03>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #160 
atom(<-12.37,   3.64, -18.44>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #161 
atom(< -8.94,   4.26, -18.45>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #162 
atom(<-13.12,   5.48, -21.72>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #163 
atom(< -8.11,   2.50, -15.29>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #164 
atom(< -8.91,   3.71, -21.37>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #165 
atom(< -5.67,   1.40, -16.76>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #166 
atom(<-11.79,   0.32, -20.66>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #167 
atom(< -8.19,   0.87, -20.47>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #168 
atom(<-12.43,   2.12, -23.77>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #169 
atom(< -7.55,  -0.93, -17.35>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #170 
atom(< -8.28,   0.33, -23.49>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #171 
atom(< -5.05,  -1.95, -18.82>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #172 
atom(<-10.33,   3.07, -16.64>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #173 
atom(<-10.84,   4.94, -20.22>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #174 
atom(< -6.32,   3.81, -16.98>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #175 
atom(<-14.87,   4.08, -19.97>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #176 
atom(<-13.66,   1.53, -19.23>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #177 
atom(< -6.99,   3.15, -19.78>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #178 
atom(<-12.56,   2.95, -21.32>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #179 
atom(< -8.07,   1.59, -17.78>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #180 
atom(< -7.07,  -0.01, -14.92>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #181 
atom(<-10.37,   2.23, -19.48>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #182 
atom(< -9.82,  -0.42, -18.86>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #183 
atom(<-10.17,   1.61, -22.26>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #184 
atom(< -5.78,   0.51, -19.15>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #185 
atom(<-14.21,   0.68, -21.97>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #186 
atom(<-13.01,  -1.92, -21.27>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #187 
atom(< -6.34,  -0.27, -21.93>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #188 
atom(<-11.97,  -0.43, -23.37>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #189 
atom(< -7.39,  -1.76, -19.83>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #190 
atom(< -3.65,  -0.53, -20.70>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #191 
atom(< -9.68,  -1.10, -21.60>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #192 
atom(<  3.35,  -2.63,  -3.53>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #193 
atom(<  6.78,  -2.00,  -3.53>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #194 
atom(<  2.60,  -0.79,  -6.80>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #195 
atom(<  7.62,  -3.77,  -0.38>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #196 
atom(<  6.81,  -2.56,  -6.46>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #197 
atom(< 10.05,  -4.87,  -1.84>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #198 
atom(<  3.93,  -5.95,  -5.74>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #199 
atom(<  7.53,  -5.39,  -5.55>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #200 
atom(<  3.29,  -4.15,  -8.85>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #201 
atom(<  8.17,  -7.19,  -2.44>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #202 
atom(<  7.44,  -5.94,  -8.57>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #203 
atom(< 10.67,  -8.22,  -3.90>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #204 
atom(<  5.39,  -3.20,  -1.72>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #205 
atom(<  4.88,  -1.33,  -5.31>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #206 
atom(<  9.40,  -2.46,  -2.07>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #207 
atom(<  0.85,  -2.19,  -5.05>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #208 
atom(<  2.06,  -4.74,  -4.32>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #209 
atom(<  8.73,  -3.12,  -4.86>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #210 
atom(<  3.16,  -3.32,  -6.40>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #211 
atom(<  7.66,  -4.68,  -2.87>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #212 
atom(<  8.65,  -6.28,   0.00>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #213 
atom(<  5.35,  -4.04,  -4.57>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #214 
atom(<  5.90,  -6.69,  -3.94>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #215 
atom(<  5.56,  -4.65,  -7.35>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #216 
atom(<  9.95,  -5.75,  -4.24>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #217 
atom(<  1.51,  -5.59,  -7.05>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #218 
atom(<  2.71,  -8.19,  -6.36>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #219 
atom(<  9.38,  -6.54,  -7.02>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #220 
atom(<  3.75,  -6.70,  -8.45>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #221 
atom(<  8.34,  -8.03,  -4.92>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #222 
atom(< 12.07,  -6.80,  -5.79>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #223 
atom(<  6.04,  -7.36,  -6.69>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #224 
atom(< -5.91,  -0.91,  -9.10>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #225 
atom(< -2.48,  -0.29,  -9.10>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #226 
atom(< -6.66,   0.92, -12.38>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #227 
atom(< -1.64,  -2.06,  -5.95>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #228 
atom(< -2.45,  -0.85, -12.03>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #229 
atom(<  0.79,  -3.16,  -7.42>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #230 
atom(< -5.33,  -4.24, -11.31>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #231 
atom(< -1.73,  -3.68, -11.12>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #232 
atom(< -5.97,  -2.44, -14.42>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #233 
atom(< -1.09,  -5.48,  -8.01>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #234 
atom(< -1.82,  -4.23, -14.14>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #235 
atom(<  1.42,  -6.51,  -9.47>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #236 
atom(< -3.87,  -1.49,  -7.29>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #237 
atom(< -4.38,   0.38, -10.88>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #238 
atom(<  0.14,  -0.75,  -7.64>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #239 
atom(< -8.41,  -0.48, -10.62>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #240 
atom(< -7.19,  -3.03,  -9.89>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #241 
atom(< -0.53,  -1.41, -10.43>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #242 
atom(< -6.10,  -1.60, -11.98>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #243 
atom(< -1.60,  -2.97,  -8.44>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #244 
atom(< -0.61,  -4.57,  -5.57>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #245 
atom(< -3.91,  -2.33, -10.14>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #246 
atom(< -3.36,  -4.98,  -9.51>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #247 
atom(< -3.70,  -2.94, -12.92>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #248 
atom(<  0.69,  -4.04,  -9.81>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #249 
atom(< -7.74,  -3.88, -12.62>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #250 
atom(< -6.55,  -6.48, -11.93>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #251 
atom(<  0.12,  -4.83, -12.59>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #252 
atom(< -5.51,  -4.99, -14.03>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #253 
atom(< -0.92,  -6.32, -10.49>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #254 
atom(<  2.81,  -5.08, -11.36>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #255 
atom(< -3.21,  -5.65, -12.26>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #256 
atom(<-15.17,   0.80, -14.67>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #257 
atom(<-11.74,   1.42, -14.67>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #258 
atom(<-15.92,   2.63, -17.95>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #259 
atom(<-10.90,  -0.35, -11.52>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #260 
atom(<-11.71,   0.86, -17.60>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #261 
atom(< -8.47,  -1.45, -12.99>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #262 
atom(<-14.59,  -2.53, -16.88>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #263 
atom(<-10.99,  -1.97, -16.69>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #264 
atom(<-15.23,  -0.73, -19.99>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #265 
atom(<-10.34,  -3.77, -13.58>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #266 
atom(<-11.08,  -2.52, -19.72>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #267 
atom(< -7.84,  -4.80, -15.04>, 1.08, rgb <0.75, 0.65, 0.65>, 0.0, simple) // #268 
atom(<-13.13,   0.22, -12.87>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #269 
atom(<-13.64,   2.09, -16.45>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #270 
atom(< -9.12,   0.96, -13.21>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #271 
atom(<-17.67,   1.23, -16.20>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #272 
atom(<-16.45,  -1.32, -15.46>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #273 
atom(< -9.79,   0.30, -16.00>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #274 
atom(<-15.36,   0.11, -17.55>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #275 
atom(<-10.86,  -1.26, -14.01>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #276 
atom(< -9.87,  -2.86, -11.14>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #277 
atom(<-13.17,  -0.62, -15.71>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #278 
atom(<-12.61,  -3.27, -15.08>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #279 
atom(<-12.96,  -1.23, -18.49>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #280 
atom(< -8.57,  -2.33, -15.38>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #281 
atom(<-17.00,  -2.17, -18.19>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #282 
atom(<-15.81,  -4.77, -17.50>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #283 
atom(< -9.14,  -3.12, -18.16>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #284 
atom(<-14.77,  -3.28, -19.60>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #285 
atom(<-10.18,  -4.60, -16.06>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #286 
atom(< -6.45,  -3.37, -16.93>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #287 
atom(<-12.47,  -3.94, -17.83>, 1.21, rgb <0.82, 0.82, 0.87>, 0.0, simple) // #288 
