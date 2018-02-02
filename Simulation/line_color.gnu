_HiStOrY_V2_
plot './M.txt' using 1:2 with linespo, './M.txt' using 1:3 with linespo
plot './N.txt' using 1:2 with linespo, './N.txt' using 1:3 with linespo, './N.txt' using 1:4 with linespo
quit
plot './N.txt' using 1:2 with linespo, './N.txt' using 1:3 with linespo, './N.txt' using 1:4 with linespo
plot './N.txt' using 1:2 with linespo, './N.txt' using 1:3 with linespo, './N.txt' using 1:4 with linespo
qqqqqqqqqqqqqqqqqqqquit
plot './M.txt' using 1:2 with linespo, './M.txt' using 1:3 with linespo, './M.txt' using 1:4 with linespo
q
plot './N.txt' using 1:2 with linespo, './N.txt' using 1:3 with linespo, './N.txt' using 1:4 with linespo
q
plot './N.txt' using 1:2 with linespo, './N.txt' using 1:3 with linespo, './N.txt' using 1:4 with linespo
q
plot './N.txt' using 1:2 with linespo, './N.txt' using 1:3 with linespo, './N.txt' using 1:4 with linespo
plot './N.txt' using 1:2 with linespo, './N.txt' using 1:3 with linespo, './N.txt' using 1:4 with linespo
plot './M.txt' using 1:2 with linespo, './M.txt' using 1:3 with linespo, './M.txt' using 1:4 with linespo
q
plot './N.txt' using 1:2 with linespo, './N.txt' using 1:3 with linespo, './N.txt' using 1:4 with linespo
set xlabel "X (2pi)"
set ylabel "Energy"
plot './N.txt' using 1:2 with linespo title "Exact E(z)", './N.txt' using 1:3 with linespo, './N.txt' using 1:4 with linespo
plot './N.txt' using 1:2 with linespo title "Exact E(z)", './N.txt' using 1:3 with linespo title "Numerical E(z)", './N.txt' using 1:4 with linespo title "H(z)"
set term eps
set term postscript eps
set output "N10.eps"
quit
plot './M.txt' using 1:2 with linespo, './M.txt' using 1:3 with linespo, './M.txt' using 1:4 with linespo
plot './N.txt' using 1:2 with linespo title "Exact E(z)", './N.txt' using 1:3 with linespo title "Numerical E(z)", './N.txt' using 1:4 with linespo title "H(z)"
qqqqqqqqqqqqqqqqqqqqqqqquit
plot './N.txt' using 1:2 with linespo title "Exact E(z)", './N.txt' using 1:3 with linespo title "Numerical E(z)", './N.txt' using 1:4 with linespo title "H(z)"
qqqqqqqqqqqqqqqqqqqquit
plot './N.txt' using 1:2 with linespo title "Exact E(z)", './N.txt' using 1:3 with linespo title "Numerical E(z)", './N.txt' using 1:4 with linespo title "H(z)"
plot './M.txt' using 1:2 with linespo title "Exact E(z)", './M.txt' using 1:3 with linespo title "Numerical E(z)", './M.txt' using 1:4 with linespo title "H(z)"
plot './M.txt' using 1:2 with linespo title "Exact E(z)", './M.txt' using 1:3 with linespo title "Numerical E(z)", './M.txt' using 1:4 with linespo title "H(z)"
plot './N.txt' using 1:2 with linespo, './N.txt' using 1:3 with linespo, './N.txt' using 1:4 with linespo
plot './N.txt' using 1:2 with linespo, './N.txt' using 1:3 with linespo, './N.txt' using 1:4 with linespo
plot './M.txt' using 1:2 with linespo title "Exact E(z)", './M.txt' using 1:3 with linespo title "Numerical E(z)", './M.txt' using 1:4 with linespo title "H(z)"
plot './N.txt' using 1:2 with linespo, './N.txt' using 1:3 with linespo, './N.txt' using 1:4 with linespo
plot './N.txt' using 1:2 with linespo, './N.txt' using 1:3 with linespo, './N.txt' using 1:4 with linespo
plot './M.txt' using 1:2 with linespo, './M.txt' using 1:3 with linespo, './M.txt' using 1:4 with linespo
plot './N.txt' using 1:2 with linespo, './N.txt' using 1:3 with linespo, './N.txt' using 1:4 with linespo
plot './M.txt' using 1:2 with linespo, './M.txt' using 1:3 with linespo, './M.txt' using 1:4 with linespo
plot './M.txt' using 1:2 with linespo title "Exact E(z)", './M.txt' using 1:3 with linespo title "Numerical E(z)", './M.txt' using 1:4 with linespo title "H(z)"
set title "1D Maxwell's equation, M=512"
set xlabel "X""""""""""""""""""""""""""""""
set ylabel "Energy"
set term postsc eps
set output "M512.eps"
plot './M.txt' using 1:2 with linespo title "Exact E(z)", './M.txt' using 1:3 with linespo title "Numerical E(z)", './M.txt' using 1:4 with linespo title "H(z)"
quit
plot './M.txt' using 1:2 with linespo title "Exact E(z)", './M.txt' using 1:3 with linespo title "Numerical E(z)", './M.txt' using 1:4 with linespo title "H(z)"
set title "1D Maxwell's Equation M=128"
set xlabel "X"
set term postsc eps
plot './M.txt' using 1:2 with linespo title "Exact E(z)", './M.txt' using 1:3 with linespo title "Numerical E(z)", './M.txt' using 1:4 with linespo title "H(z)"
quit
set term postsc eps color
set output "M128.eps"
set ylabel "Energy"
set xlabel "X"
set title "1D Maxwell's Equation M=128"
plot './M.txt' using 1:2 with linespo title "Exact E(z)", './M.txt' using 1:3 with linespo title "Numerical E(z)", './M.txt' using 1:4 with linespo title "H(z)"
quit
plot './N.txt'
plot './N.txt' with lines
plot './N.txt' with linespo
set polar
plot './N.txt' with linespo
set samples 10
plot './N.txt' with linespo
set grid polar
plot './N.txt' with linespo
qqqqqqquit
quit
plot './N.txt' with linespo
quit();
plot './N.txt' with linespo
set grid polar
plot './N.txt' with linespo
quit();
plot './N.txt' with linespo
quit();
plot './N.txt' with linespo
set polar
plot './N.txt' with linespo
quit
set angles degrees
plot './N.txt' using 1:2
plot './N.txt' using 1:2 with linespo
set size square
plot './N.txt' using 1:2 with linespo
set grid polar 10
plot './N.txt' using 1:2 with linespo
quit
plot './M.txt'
plot './M.txt' with linespo
plot './M.txt' with linespo
quit
q
q
plot './M.txt' with linespo
q
plot './M.txt' with linespo
q
plot './U.txt'
plot './U.txt' with linespo
q
plot './U.txt' with linespo
q
plot './U.txt' with linespo
q
plot './U0.txt' with linespo
plot './UO.txt' with linespo
plot './UO.txt' with linespo, './U.txt' with linespo
q
quit
plot './UO.txt' with linespo, './U.txt' with linespo
qq
q
plot './UO.txt' with linespo, './U.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo
qq
plot './UO.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo
q
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
qqq
q
qqq
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
q
plot './UO.txt' with linespo, './U15.txt' with linespo title "T=0.15"
plot './UO.txt' with linespo, './U25.txt' with linespo title "T=0.15"
q
plot './UO.txt' with linespo, './U50.txt' with linespo title "T=0.15"
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
plot './UO.txt' with linespo, './U50.txt' with linespo title "T=0.15"
plot './UO.txt' with linespo, './U15.txt' with linespo title "T=0.15"
plot './UO.txt' with linespo title 'T=0', './U15.txt' with linespo title "T=0.15"
plot './UO.txt' with linespo title 'T=0', './U15.txt' with linespo title "T=0.15", './U25.txt' with linespo title "T=0.25"
plot './UO.txt' with linespo title 'T=0', './U15.txt' with linespo title "T=0.15", './U25.txt' with linespo title "T=0.25", './U50.txt' with linespo title "T=0.5"
plot './UO.txt' with linespo title 'T=0', './U15.txt' with linespo title "T=0.15", './U25.txt' with linespo title "T=0.25", './U50.txt' with linespo title "T=0.5", './U75.txt' with linespo title "T=0.75"
plot './UO.txt' with linespo title 'T=0', './U15.txt' with linespo title "T=0.15", './U25.txt' with linespo title "T=0.25", './U50.txt' with linespo title "T=0.5", './U75.txt' with linespo title "T=0.75", './U85.txt' with linespo title "T=0.85", './U100.txt' with linespo title "T=1.0"
set xlabel "X"
set ylabel "U(x)"
set title "Numerical Wave Propagation using P1 FEM"
plot './UO.txt' with linespo title 'T=0', './U15.txt' with linespo title "T=0.15", './U25.txt' with linespo title "T=0.25", './U50.txt' with linespo title "T=0.5", './U75.txt' with linespo title "T=0.75", './U85.txt' with linespo title "T=0.85", './U100.txt' with linespo title "T=1.0"
set term postscr eps color
set output "P1.eps"
plot './UO.txt' with linespo title 'T=0', './U15.txt' with linespo title "T=0.15", './U25.txt' with linespo title "T=0.25", './U50.txt' with linespo title "T=0.5", './U75.txt' with linespo title "T=0.75", './U85.txt' with linespo title "T=0.85", './U100.txt' with linespo title "T=1.0"
quit
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
plot './UO.txt' with linespo title "T=0", './U.txt' with linespo title "Numerical Soln", 'E.txt' with linespo title "Exact Soln"
set xlabel "X"
set ylabel "U(x)"
set title "Numerical Propagation using P1 FEM"
set term post eps color
set output "example.eps"
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
set title "Numerical Propagation using P1 FEM"
set xlabel "X"
set ylabel "U(x)"
plot './UO.txt' with linespo title 'T=0', './U15.txt' with linespo title "T=0.15", './U25.txt' with linespo title "T=0.25", './U50.txt' with linespo title "T=0.5", './U75.txt' with linespo title "T=0.75", './U85.txt' with linespo title "T=0.85", './U100.txt' with linespo title "T=1.0"
set term post eps color
set output "./P1.eps"
plot './UO.txt' with linespo title 'T=0', './U15.txt' with linespo title "T=0.15", './U25.txt' with linespo title "T=0.25", './U50.txt' with linespo title "T=0.5", './U75.txt' with linespo title "T=0.75", './U85.txt' with linespo title "T=0.85", './U100.txt' with linespo title "T=1.0"
quit
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
qqqq
q
plot './UO.txt' with linespo, './U.txt' with linespo, 'E.txt' with linespo
q
plot './OMEGA1.txt' using 2:1 with linespo
set logscale
plot './OMEGA1.txt' using 2:1 with linespo
qqqqq
q
set logscale y
plot './OMEGA1.txt' using 2:1 with linespo
plot './OMEGA1.txt' using 1:2 with linespo
set xlabel "h"
set ylabel "L2-error"
set title "L2 error in P1 FEM for OMEGA=1"
plot './OMEGA1.txt' using 1:2 with linespo title "L2-error"
set grid
plot './OMEGA1.txt' using 1:2 with linespo title "L2-error"
show grid
plot './OMEGA1.txt' using 1:2 with linespo title "L2-error"
set term post eps
set output "L2_OMEGA1.eps"
plot './OMEGA1.txt' using 1:2 with linespo title "L2-error"
set term x11
q
plot './OMEGA1.txt' using 1:2 with linespo title "L2-error"
q
plot (2*x-1)*(x-1)
set xrange [0,1]
set xrange [0:1]
plot (2*x-1)*(x-1)
set grid
plot (2*x-1)*(x-1)
plot (2*x-1)*(x-1) title "\\psi_1(x)"
plot (2*x-1)*(x-1) title "\\psi_1(x)", 4*x*(1-x)
plot (2*x-1)*(x-1) title "\\psi_1(x)", 4*x*(1-x) title "\\psi_2(x)"
plot (2*x-1)*(x-1) title "\\psi_1(x)", 4*x*(1-x) title "\\psi_2(x)", x*(2*x-1)
plot (2*x-1)*(x-1) title "\\psi_1(x)", 4*x*(1-x) title "\\psi_2(x)", x*(2*x-1) title "\\psi_3(x)"
set xlabel "x"
set ylabel "\\psi(x)"
set title "P2 FEM Lagrange Basis Elements"
plot (2*x-1)*(x-1) title "\\psi_1(x)", 4*x*(1-x) title "\\psi_2(x)", x*(2*x-1) title "\\psi_3(x)"
set term post eps color
set output "P2.eps"
plot (2*x-1)*(x-1) title "\\psi_1(x)", 4*x*(1-x) title "\\psi_2(x)", x*(2*x-1) title "\\psi_3(x)"
q
plot 1-x
set xrange [0:1]
plot 1-x
set grid
set xlabel "x"
set ylabel "\\psi(x)"
plot 1-x title "\\psi_1(x)", x title "\\psi_2(x)"
set term post eps color
set output "P1.eps"
set title "P1 FEM Lagrange Basis Elements"
plot 1-x title "\\psi_1(x)", x title "\\psi_2(x)"
q
set logscale
plot './K1.txt
plot './K1.txt'
plot './K1.txt' using 1:2
q
plot './K1.txt' with lines
set logscale y
plot './K1.txt' with lines
q
set logscale x
plot './K1.txt' with lines
q
plot './K1.txt'
q
plot './K1.txt' with linespo
q
plot './K1.txt' with linespo
set title "Plot of frequency omega_{h,1} of physical wave, K=1"
set xlabel "log(Np)"
set ylabel "log(Error)"
plot './K1.txt' with linespo title "Error in physical frequency, K=1"
set term postscript eps color
set output "K1PLOT.eps"
plot './K1.txt' with linespo title "Error in physical frequency, K=1"
q
plot './K2.txt' with linespo title "Error in physical frequency, K=1"
set xlabel "log(Np)"
set ylabel "log(Error)"
set title "Plot of frequency omega_{h,2} of physical wave, K=1"
plot './K2.txt' with linespo title "Error in physical frequency, K=1"
set term postscript eps color
set output "K2PLOT.eps"
plot './K2.txt' with linespo title "Error in physical frequency, K=1"
q
plot './K3.txt' with linespo title "Error in physical frequency, K=1"
set ylabel "log(Error in Amplitude) = log(W_2 - Y_0)"
set title "Plot of error in amplitude for omega_{h,2} of physical wave, K=1"
set xlabel "log(Np)"
plot './K3.txt' with linespo title "Error in physical frequency, K=1"
set grid
plot './K3.txt' with linespo title "Error in physical frequency, K=1"
set term postscript eps color
set output "K3PLOT.eps"
plot './K3.txt' with linespo title "Error in physical frequency, K=1"
q
plot "./M.txt"
q
plot "./M.txt"
q
plot "./M.txt"
plot "./M.txt" with lines
qq
q
plot "./M.txt" with lines
q
plot "./M.txt" with lines
q
plot "./M.txt" with lines
q
plot "./M.txt" with lines
q
plot "./M.txt" with lines
q
plot "./H98.txt" with lines
plot "./H98.txt" with lines, "./E98.txt" with lines
plot "./H198.txt" with lines, "./E198.txt" with lines
q
plot "./M.txt"
qqq
q
plot './E99.txt'
plot './E99.txt' with lines
plot './E199.txt' with lines
plot './E199.txt' with lines, './H199.txt' with lines
set term png
set output "a.png"
set title "Pulse propagation"
plot './E199.txt' with lines, './H199.txt' with lines
quit
set view 45,30,1,1
set arrow from 0,0,0 to 10,0,0
unset border
unset tics
splot '+' './E199.txt'
splot '+' './E199.txt'
splot '+' './E199.txt'
set xrange [0:10]
splot '+' './E199.txt'
set xrange [0:100]
splot '+' './E199.txt'
splot '+' './E199.txt', './H199.txt'
splot './E199.txt' using 1, './H199.txt' using 1
set yrange [-1:1]
splot './E199.txt' using 1, './H199.txt' using 1
set xrange [-1:1]
splot './E199.txt' using 1, './H199.txt' using 1
set xrange [0:50]
splot './E199.txt' using 1, './H199.txt' using 1
set border
splot './E199.txt' using 1, './H199.txt' using 1
splot './E199.txt' using 1 title 'E' with lines, './H199.txt' using 1
splot './E199.txt' using 1 title 'E' with lines, './H199.txt' using 1 with lines title 'H'
splot 1,'./E199.txt' using 1 title 'E' with lines, './H199.txt' using 1 with lines title 'H'
splot './E199.txt' using 1 title 'E' with lines, 1,'./H199.txt' using 1 with lines title 'H'
show view
q
splot './E199.txt' using 1 title 'E' with lines, 1,'./H199.txt' using 1 with lines title 'H'
splot './E199.txt' using 1 title 'E' with lines, 1,'+' './H199.txt' using 1 with lines title 'H'
splot './E199.txt' using 1 title 'E' with lines, 1,'+'; './H199.txt' using 1 with lines title 'H'
help splot
data-file
help index
q
splot './Z199.txt'
splot './Z199.txt' with lines
splot './Z199.txt' using 1 with lines
splot './Z199.txt' using 2 with lines, './Z199.txt' using 2 with lines
splot './Z199.txt' using 2 with lines, './Z199.txt' using 3 with lines
splot './Z199.txt' using 2 with lines, './Z199.txt' using 1 with lines,'./Z199.txt' using 2 with lines
splot './Z199.txt' using 2 with lines, './Z199.txt',,'./Z199.txt' using 2 with lines
splot './Z199.txt' using 2 with lines, './Z199.txt','./Z199.txt' using 2 with lines
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
set xlabel "X"
set ylabel "Y"
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
set zrange [-1:1]
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
set yrange [-0.05:0.05]
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
set yrange [-1:1]
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
splot 1,'./Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
set xlabel "Z"
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
set zlabel "X"
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
set xrange [-1:1]
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
set xrange [1:400]
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
set zlabel [-1:1]
set zrange [-1:1]
set zlabel [-1:1]
set zrange [-1:1]
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
set zrange [0:0.5]
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
q
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
set zrange [0:0.5]
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
set zrange [-1:1]
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
set yrange [0:0.5]
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
set yrange [0:0.05]
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
set yrange [0:1]
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
set yrange [0:2]
splot './Z199.txt' using 2 with lines, './Z199.txt' with lines,'./Z199.txt' using 2 with lines
splot './Z199.txt' using 2 with lines t 'E', './Z199.txt' with lines,'./Z199.txt' using 2 with lines
splot './Z199.txt' using 2 with lines t 'Z', './Z199.txt' with lines,'./Z199.txt' using 2 with lines
splot './Z199.txt' using 2 with lines t 'Z', './Z199.txt' with lines t 'H','./Z199.txt' using 2 with lines
splot './Z199.txt' using 2 with lines t 'Z', './Z199.txt' with lines t 'H','./Z199.txt' using 2 with lines t 'E'
splot './Z300.txt' using 2 with lines t 'Z', './Z199.txt' with lines t 'H','./Z199.txt' using 2 with lines t 'E'
splot './Z300.txt' using 2 with lines t 'Z', './Z199.txt' with lines t 'H','./Z300.txt' using 2 with lines t 'E'
splot './Z300.txt' using 2 with lines t 'Z', './Z199.txt' with lines t 'H','./Z300.txt' using 3 with lines t 'E'
plot './Z300.txt'
plot './Z300.txt' using 1
plot './Z300.txt' using 2
plot './Z300.txt' using 1
plot './Z300.txt' using 1 with lines
q
plot './Z300.txt' using 1 with lines
splot './Z300.txt' using 1 with lines
splot './Z300.txt' using 2 with lines
splot './Z300.txt' using 2 with lines t 'E'
splot './Z300.txt' 
splot './Z300.txt' using 2 with lines t 'E', './Z300.txt' using 3
splot './Z300.txt' using 2 with lines t 'E', './Z300.txt' using 4
splot './Z300.txt' using 2 with lines t 'E', './Z300.txt' using 1
splot './Z300.txt' using 2 with lines t 'E', './Z300.txt' using 2
splot './Z300.txt' using 2 with lines t 'E', './Z300.txt' using 3
splot './Z300.txt' using 2 with lines t 'Z', './Z199.txt' with lines t 'H','./Z199.txt' using 2 with lines t 'E'
splot './Z300.txt' using 2 with lines t 'Z', './Z300.txt' with lines t 'H','./Z300.txt' using 2 with lines t 'E'
q
splot './Z300.txt' using 2 with lines t 'Z', './Z300.txt' with lines t 'H','./Z300.txt' using 2 with lines t 'E'
splot './Z300.txt' using 2 with lines t 'E'
splot './Z300.txt' using 2:3 with lines t 'E'
splot './Z300.txt' using 2:3:1 with lines t 'E'
splot './Z300.txt' using 2:3:2 with lines t 'E'
splot './Z300.txt' using 2:3:3 with lines t 'E'
q
splot './Z300.txt' matrix
splot './Z300.txt' matrix using 2:3
splot './Z300.txt' matrix using 2:3:1
splot './Z300.txt' matrix using 1:2:3
q
q
splot './Z300.txt'
q
splot './ZE300.txt'
splot './ZE199.txt'
splot './ZE199.txt' using 2
splot './ZE199.txt' using 1
q
splot './ZE199.txt'
splot './ZE199.txt' with lines t "E"
splot './ZE199.txt' with lines t "E", './ZH199.txt' 
splot './ZE199.txt' with lines t "E", './ZH199.txt' with lines t 'H'
set xlabel "Z"
set ylabel "Y"
set zlabel "X"
splot './ZE199.txt' with lines t "E", './ZH199.txt' with lines t 'H'
q
splot './ZE199.txt' with lines t "E", './ZH199.txt' with lines t 'H'
set xrange [-1:1]
set xrange [1:500]
set yrange [-1:1]
set zrange [-1:1]
splot './ZE199.txt' with lines t "E", './ZH199.txt' with lines t 'H'
set zrange [-0.5:0.5]
set yrange [-0.5:0.5]
splot './ZE199.txt' with lines t "E", './ZH199.txt' with lines t 'H'
set view 45,30,1,1
splot './ZE199.txt' with lines t "E", './ZH199.txt' with lines t 'H'
set yrange [-1:1]
set zrange [-1:1]
splot './ZE199.txt' with lines t "E", './ZH199.txt' with lines t 'H'
q
plot "./M.txt" with lines
q
plot "./M.txt" with lines
q
plot "./M.txt" with lines
q
plot "./M.txt" with lines
q
plot './ZE199.txt'
q
plot './ZH32.txt'
plot './ZH32.txt' with lines
q
splot './ZE199.txt'
plot './ZE199.txt'
q
plot './E199.txt'
q
plot './E199.txt'
plot './E199.txt' with lines
q
plot 'A.txt'
plot 'A.txt' using 1:2
plot 'A.txt' using 1:2, 'A.txt' using 1:3
plot 'A.txt' using 1:2, 'A.txt' using 1:3 with lines
plot 'A.txt' using 1:2 with lines, 'A.txt' using 1:3 with lines
q
plot 'A.txt' using 1:2 with linespo
splot 'A.txt' using 1:2 with linespo, 'B.txt' using 1:2 with linespo
splot 'A.txt' using 1:2:3 with linespo, 'B.txt' using 1:2:3 with linespo
splot 'A.txt' using 1:2:3 with linespo, 'B.txt' using 1:2:3 with linespo
plotbd
quit
source chaos.gnu
load chaos.gnu
load "chaos.gnu"
quit
splot 'A.txt' using 1:2:3 with linespo, 'B.txt' using 1:2:3 with linespo
splot 'A.txt' using 1:2:3 with linespo, 'B.txt' using 1:2:3 with linespo
q
plot 'A.txt' with linespo
plot 'A.txt' using 1:2 with linespo
plot 'A.txt' using 1:2 with linespo
set yrange [-0.1:0.1]
plot 'A.txt' using 1:2 with linespo
set yrange [-0.01:0.01]
plot 'A.txt' using 1:2 with linespo
set yrange [-0.0001:0.0001]
plot 'A.txt' using 1:2 with linespo
plot 'A.txt' using 1:2 with linespo
set yrange [-0.001:0.001]
plot 'A.txt' using 1:2 with linespo
splot 'A.txt' using 1:2:3 with linespo, 'B.txt' using 1:2:3 with linespo
set yrange [-0.01:0.01]
splot 'A.txt' using 1:2:3 with linespo, 'B.txt' using 1:2:3 with linespo
splot 'A.txt' using 1:2:3 with linespo
splot 'A.txt' using 1:2:3 with linespo, 'B.txt' using 1:2:3 with linespo
set yrange [-0.02:0.02]
splot 'A.txt' using 1:2:3 with linespo, 'B.txt' using 1:2:3 with linespo
q
splot 'A.txt' using 1:2:3 with linespo, 'B.txt' using 1:2:3 with linespo, 'C.txt' using 1:2:3 with linespo
set xlabel "E"
set ylabel "W"
set title "Dependence on v for E/W phase plot"
splot 'A.txt' using 1:2:3 with linespo t "v=0.5", 'B.txt' using 1:2:3 with linespo t "v=0.6", 'C.txt' using 1:2:3 with linespo t "v=0.55"
set zlabel "E"
set xlabel "xi"
splot 'A.txt' using 1:2:3 with linespo t "v=0.5", 'B.txt' using 1:2:3 with linespo t "v=0.6", 'C.txt' using 1:2:3 with linespo t "v=0.55"
set term eps
set term postsc
set outut "EW_V.eps"
set output "EW_V.eps"
splot 'A.txt' using 1:2:3 with linespo t "v=0.5", 'B.txt' using 1:2:3 with linespo t "v=0.6", 'C.txt' using 1:2:3 with linespo t "v=0.55"
q
set xlabel "xi"
set term postsc eps color
set zlabel "E"
set ylabel "W"
set output "EW_V.eps"
set title "Dependence on v for E/W phase plot"
splot 'A.txt' using 1:2:3 with linespo t "v=0.5", 'B.txt' using 1:2:3 with linespo t "v=0.6", 'C.txt' using 1:2:3 with linespo t "v=0.55"
quit
plot sin(x)
plot sqrt(1/x^2-2)
plot sqrt(1/(x*x-2)
plot sqrt(1/(x*x-2))
plot sqrt((1/x*x-5.25)/(1-2.25*x*x))
set xrange [0.1:1]
plot sqrt((1/x*x-5.25)/(1-2.25*x*x))
plot ((1/x*x-5.25)/(1-2.25*x*x))
set xrange [0.5:7]
plot ((1/x*x-5.25)/(1-2.25*x*x))
set xrange [0.5:0.7]
plot ((1/x*x-5.25)/(1-2.25*x*x))
set xrange [0.6:0.7]
plot ((1/x*x-5.25)/(1-2.25*x*x))
set xrange [0.5:0.7]
plot ((1/x*x-5.25)/(1-2.25*x*x))
set xrange [0.56:0.7]
plot ((1/x*x-5.25)/(1-2.25*x*x))
set xlabel "v"
set ylabel "$\\lambda$"
plot ((1/x*x-5.25)/(1-2.25*x*x))
set ylabel "$\\\\lambda$"
plot ((1/x*x-5.25)/(1-2.25*x*x))
set ylabel "$\\\\\\lambda$"
plot ((1/x*x-5.25)/(1-2.25*x*x))
set ylabel "eig(A)"
plot ((1/x*x-5.25)/(1-2.25*x*x)) t "eig(A)"
plot ((1/x*x-5.25)/(1-2.25*x*x)) t "eig^2(A)"
set ylabel "eig^2(A)"
set title "Case I: Eigenvalue of A vs v"
plot ((1/x*x-5.25)/(1-2.25*x*x)) t "eig^2(A)"
set term postscript
set output "eigA_caseI.eps"
plot ((1/x*x-5.25)/(1-2.25*x*x)) t "eig^2(A)"
set term x11
plot ((1/x*x-5.25)/(1-2.25*x*x)) t "eig^2(A)"
plot 2((1/x*x-5.25)/(1-2.25*x*x)) t "eig^2(A)"
plot 2*((1/x*x-5.25)/(1-2.25*x*x)) t "eig^2(A)"
plot 2*((1/x*x-5.25)/(x*x)) t "eig^2(A)"
plot 2*((1/x*x-5.25)/(x*x)*(-0.15*sqrt(1/x*x-5.25)+15.75-2.25)) t "eig^2(A)"
plot 2*((1/x*x-5.25)/(x*x)*(-0.15*sqrt(1/x*x-5.25)+15.75-2.25)-2) t "eig^2(A)"
plot 2*((1/x*x-5.25)/(x*x)*(-0.15))
plot 2*((1/x*x-5.25)/((x*x)*(-0.15)-2)
plot 2*((1/x*x-5.25)/((x*x)*(-0.15)-2))
plot 2*(sqrt(1/x*x-5.25)/((x*x)*(-0.15)-2))
plot 2*(sqrt(1/x*x-5.25))/((x*x)*(-0.15)-2))
plot 2*(sqrt(1/x*x-0.2))/((x*x)*(-0.15)-2))
plot 2*(sqrt(1/x*x-0.5))/((x*x)*(-0.15)-2))
plot 2*(sqrt(1/x*x-0.6))/((x*x)*(-0.15)-2))
plot 2*(sqrt(1/x*x-0.6))/((x*x)*(-0.15)-2)))
plot 2*(sqrt(1/x*x-1))/((x*x)*(-0.15)-2)))
plot 2*(sqrt(1/x*x-5.25)/((x*x)*(-0.15)-2))
plot 2*(sqrt(1/x*x-0.25)/((x*x)*(-0.15)-2))
plot 2*(sqrt(1/x*x-0.25)/((x*x)*(-0.15)*sqrt(1/x*x-0.25)-2))
plot 2*(sqrt(1/x*x-0.25)/((x*x)*(-0.15)*sqrt(1/x*x-0.25)+15-2))
plot 2*(sqrt(1/x*x-0.25)/((x*x)*(-0.15)*sqrt(1/x*x-0.25)+15-2))
plot 2*(2/x*x+sqrt(1/x*x-0.25)/((x*x)*(-0.15)*sqrt(1/x*x-0.25)+15-2))
plot 4*(2/x*x+sqrt(1/x*x-0.25)/((x*x)*(-0.15)*sqrt(1/x*x-0.25)+15-2))
plot 4*(2/x*x+sqrt(1/x*x-0.25)/((x*x)*(-0.15)*sqrt(1/x*x-0.25)+12-2))
plot 4*(2/x*x+sqrt(1/x*x-0.25)/((x*x)*(-0.15)*sqrt(1/x*x-0.25)+12)-2)
plot 4*(2/x*x+sqrt(1/x*x-0.25)/((x*x)*((-0.15)*sqrt(1/x*x-0.25)+12)-2))
set xrange [0.4:0.9]
plot 4*(2/x*x+sqrt(1/x*x-0.25)/((x*x)*((-0.15)*sqrt(1/x*x-0.25)+12)-2))
set xrange [0.42:0.9]
plot 4*(2/x*x+sqrt(1/x*x-0.25)/((x*x)*((-0.15)*sqrt(1/x*x-0.25)+12)-2))
set xrange [0.48:0.9]
plot 4*(2/x*x+sqrt(1/x*x-0.25)/((x*x)*((-0.15)*sqrt(1/x*x-0.25)+12)-2))
plot 4*(2/x*x+sqrt(1/x*x-0.25)/((x*x)*((-0.15)*sqrt(1/x*x-0.25)+12)-2)) t "eig^2(A)"
set title 
plot 4*(2/x*x+sqrt(1/x*x-0.25)/((x*x)*((-0.15)*sqrt(1/x*x-0.25)+12)-2)) t "eig^2(A)"
set title "Case III: Eigenvalue of A vs v"
set term postscript
set output "eigA_caseIII.eps"
plot 4*(2/x*x+sqrt(1/x*x-0.25)/((x*x)*((-0.15)*sqrt(1/x*x-0.25)+12)-2)) t "eig^2(A)"
set term x11
plot 4*(-2/x*x+sqrt(1/x*x-0.25)/((x*x)*((+0.15)*sqrt(1/x*x-0.25)+12)-2)) t "eig^2(A)"
set title "Case II: Eigenvalue of A vs v"
set xrange [0.1:0.9]
plot 4*(-2/x*x+sqrt(1/x*x-0.25)/((x*x)*((+0.15)*sqrt(1/x*x-0.25)+12)-2)) t "eig^2(A)"
set xrange [0.3:0.7]
plot 4*(-2/x*x+sqrt(1/x*x-0.25)/((x*x)*((+0.15)*sqrt(1/x*x-0.25)+12)-2)) t "eig^2(A)"
set xrange [0.5:0.7]
plot 4*(-2/x*x+sqrt(1/x*x-0.25)/((x*x)*((+0.15)*sqrt(1/x*x-0.25)+12)-2)) t "eig^2(A)"
set xrange [0.3:0.7]
plot 4*(-2/x*x+sqrt(1/x*x-0.25)/((x*x)*((+0.15)*sqrt(1/x*x-0.25)+12)-2)) t "eig^2(A)"
set term postscript
set output "eigA_caseII.eps"
plot 4*(-2/x*x+sqrt(1/x*x-0.25)/((x*x)*((+0.15)*sqrt(1/x*x-0.25)+12)-2)) t "eig^2(A)"
q
plot 'diagram.dat'
plot 'diagram.dat' with linespo
quit
plot 'diagram.dat' with linespo
plot 'diagram.dat' using 1:4 with linespo
set yrange [0:3]
plot 'diagram.dat' using 1:4 with linespo
splot 'diagram.dat' using 1:2:4 with linespo
splot 'diagram.dat' using 1:2:3 with linespo
splot 'diagram.dat' using 1:2 with linespo
splot 'diagram.dat' using 1:2:5 with linespo
plot 'diagram.dat' using 1:4 with linespo
plot 'diagram.dat' using 1:4 with linespo lc
plot 'diagram.dat' using 1:4 with linespo lc palette
plot 'diagram.dat' using 1:4 with linespo lc palette z
set palette define (1 "#B0B0B0" , 2 "#FF0000")
plot 'diagram.dat' using 1:4 with linespo lc palette 
plot 'diagram.dat' using 1:4:4 with linespo lc palette
set palette define (1 "#00BB00" , 2 "#FF0000")
plot 'diagram.dat' using 1:4:4 with linespo lc palette
set palette define (1 "#0000FF" , 2 "#FF0000")
plot 'diagram.dat' using 1:4:4 with linespo lc palette
plot 'diagram.dat' using 1:2:4 with linespo lc palette
set yrange [0:3]
plot 'diagram.dat' using 1:2:4 with linespo lc palette
set yrange [-10:10]
plot 'diagram.dat' using 1:2:4 with linespo lc palette
plot 'diagram.dat' using 1:2:4 with linespo lc palette z
set cbrange [0:1]
plot 'diagram.dat' using 1:2:4 with linespo lc palette z
set cbrange [1:2]
plot 'diagram.dat' using 1:2:4 with linespo lc palette z
unset ytics
plot 'diagram.dat' using 1:2:4 with linespo lc palette z
set xlabel "v"
set title "Bifurcation plot"
plot 'diagram.dat' using 1:2:4 with linespo lc palette z t "B: Stable"
plot 'diagram.dat' using 1:2:4 with linespo lc palette z t "B: Stable R: Umstable FP"
plot 'diagram.dat' using 1:2:4 with linespo lc palette  t "B: Stable R: Umstable FP"
plot 'diagram.dat' using 1:2:4 with linespo lc palette  t "B: Stable R: Unstable FP"
plot 'diagram.dat' using 1:2:4 with linespo lc palette  t "B: Stable R: Unstable FP"
unset colorbox
plot 'diagram.dat' using 1:2:4 with linespo lc palette  t "B: Stable R: Unstable FP"
plot 'diagram.dat' using 1:2:4 with linespo lc palette  t "B: Stable R: Unstable FP", 'diagram.dat' using 1:3
plot 'diagram.dat' using 1:2:4 with linespo lc palette  t "B: Stable R: Unstable FP", 'diagram.dat' using 1:4
plot 'diagram.dat' using 1:2:4 with linespo lc palette  t "B: Stable R: Unstable FP"
set xrange [0.15:0.92]
plot 'diagram.dat' using 1:2:4 with linespo lc palette  t "B: Stable R: Unstable FP"
set xrange [0.15:0.95]
plot 'diagram.dat' using 1:2:4 with linespo lc palette  t "B: Stable R: Unstable FP"
plot 'diagram.dat' using 1:2:4 with linespo lc palette  t "BLUE: Stable RED: Unstable FP"
plot 'diagram.dat' using 1:2:4 with linespo lc palette  t "BLUE: Stable \\nRED: Unstable FP"
plot 'diagram.dat' using 1:2:4 with linespo lc palette  t "BLUE: Stable FP \\nRED: Unstable FP"
plot 'diagram.dat' using 1:2:4 with linespo lc palette  t "BLUE: Stable FP \\n RED: Unstable FP"
plot 'diagram.dat' using 1:2:4 with linespo lc palette  t "BLUE:  Stable FP \\n RED: Unstable FP"
plot 'diagram.dat' using 1:2:4 with linespo lc palette  t "BLUE:  Stable FP \\n RED: Unstable FP"
set term postscript eps color
set output "auto_bifurcation.eps"
set term postscript eps color land
plot 'diagram.dat' using 1:2:4 with linespo lc palette  t "BLUE:  Stable FP \\n RED: Unstable FP"
quit
