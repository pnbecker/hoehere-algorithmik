set terminal postscript enhanced color
set output "foo.ps"
set xrange [0:4]
set yrange [0:4]
set style line 1 lt 1 lw 2 pt 3
set style line 2 lt 2 lw 2 pt 3
set style line 3 lt 3 lw 2 pt 3
set style line 4 lt 4 lw 2 pt 3
#set grid

f(x)=1/x
g(x)=1/(x+1)
#h(x) = (x <= 0) ? 0.0 :  (1.0/int(x)) - h(int(x)-1)
h(x) = (x <= 0) ? 1.0 : 1.0/(int(x+1))
i(x) = (x <= 0) ? 0.0 : i(x-1) + 1.0/(int(x+1))
set samples 2000

plot h(x) title "Hn" ls 1,\
     f(x) ls 2,\
     g(x) ls 3
