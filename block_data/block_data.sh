#!/opt/local/bin/gnuplot
#!/usr/bin/gnuplot

#set size 0.8, 0.8

#set terminal eps
#set terminal postscript eps enhanced color
#set output "result.eps"
set terminal png
set output "result.png"

#set xrange [0:1]
#set yrange [0:1]
#set y2range [0:1]

#set key left top
set key outside center top horizontal
#unset key

#set logscale x
#set logscale y
#set y2tics nomirror

set xlabel "x-axis label"
set ylabel "y-axis label"
#set y2label "y2-axis label"

### data is separated by two empty lines for each "block"
plot\
"data.txt" index 0 using 1:2 with lp ti "block0",\
"data.txt" index 1 using 1:2 with lp ti "block1",\
"data.txt" index 2 using 1:2 with lp ti "block2",\
"data.txt" index 3 using 1:2 with lp ti "block3",\
"data.txt" index 4 using 1:2 with lp ti "block4",\
"data.txt" index 5 using 1:2 with lp ti "block5"

