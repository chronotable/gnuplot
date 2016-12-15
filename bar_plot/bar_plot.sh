#!/opt/local/bin/gnuplot

#set size 0.6, 0.6

#set terminal postscript eps enhanced color
#set output "result.eps"
set terminal png
set output "bar_plot.png"

set xlabel "x-axis label" #font ", 18"

#set key outside top
set key outside center top horizontal
#set key box

#set key font ", 22"

#set logscale y
#set logscale x

### reference: http://www.ss.scphys.kyoto-u.ac.jp/person/yonezawa/contents/program/gnuplot/bar-graph.html
set style fill solid border lc rgb "black"
set boxwidth 0.8 relative
#set xtics rotate by -90
plot "data.txt" using 1:($2+$3+$4)   with boxes lw 2 lc rgb "light-pink"  title "hoge",\
     "data.txt" using 1:($2+$3)      with boxes lw 2 lc rgb "light-green" title "fuga",\
     "data.txt" using 1:($2)         with boxes lw 2 lc rgb "light-cyan"  title "piyo"

