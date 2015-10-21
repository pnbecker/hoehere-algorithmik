#set terminal postscript enhanced color
#set output "kap5Geo1.ps"
set terminal epslatex ',,sl' standalone color solid
#set terminal pslatex color solid 
set output "test.tex"
set xrange [-1:6]
set yrange [-3:10]
set zeroaxis
set border 3

set xlabel "$x_1$"
set ylabel "$x_2$"

set style line 1 lt 1 lw 2 pt 3
set style line 2 lt 2 lw 2 pt 3
set style line 3 lt 3 lw 2 pt 3
set style line 4 lt 4 lw 2 pt 3

f(x)=-2*x+8
g(x)=x-2
f2(x) = (x < 0.0) ? 0/0 : (x > 0.00150076) ? ((x>10.0/3.0) ?  0/0 : f(x)) : 0.0
#f2(x) = (x < 0) ? 0/0 : (x == 0.0) ? 0.0 : ((x>10.0/3.0) ?  0/0 : f(x))
g2(x) = (x < 0) ? 0/0 : (x <= 2) ? 0.0 : ((x>10.0/3.0) ?  0/0 : g(x))
set samples 2000

plot f2(x) with filledcurves xy=2,0 title "zul\\\"assiger Bereich", f(x) ls 2 title "$x_2=-2x_1+8$", g(x) ls 3 title "$x_2=x_1-2$"
#plot f2(x)
