#!/opt/local/bin/gnuplot
#!/usr/bin/gnuplot

### arrange the size
#set size 0.6,0.6
set size 0.8,0.8
#set size 1.6, 0.05

#set terminal postscript eps enhanced color
#set output "legend_only.eps"
set terminal png
set output "legend_only.png"

#set key outside top
set key outside center top horizontal
#set key box
set key font ", 18"

### delete all the parts of graph
set xrange[0:1]
set yrange[0:1]
set lmargin 0
set rmargin 0
set tmargin 0
set bmargin 0
unset border
unset tics

plot \
NaN w p title "hoge", \
NaN w p title "fuga", \
NaN w p title "piyo"



