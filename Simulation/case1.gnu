## 
set term postscript eps color
set output "case1_zoom_in_hopf.eps"
#set xrange [0.4318335:0.43643578]
set grid
set xlabel "v"
set ylabel "Eigenvalue^2"
set title "Eigenvalue^2 of Case I"
set samples 100000
set label 1 "Saddle" at 0.15,5
set label 2 "Stable Equi" at 0.434,-20
set label 3 "Saddle" at 0.8,20
show label 
set xrange [0.1:0.9]
#set xrange [0.35:0.9]
#set xrange  [0.428:0.444]
set yrange [-50:50]
#plot x
n(x)=(1/(x*x)-5.25)
d(x)=1-2.25*x*x
f(x)=n(x)/d(x)
#plot f(x),real(2*(1/(x*x)-5.25)-0.67084*sqrt(1/(x*x)-5.25)),imag(2*(1/(x*x)-5.25)-0.67084*sqrt(1/(x*x)-5.25))
#plot real(f(x)) lt rgb "red" t "Re",imag(f(x)) lt rgb "blue" t "Im"
plot f(x)
quit
