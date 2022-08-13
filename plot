#! /usr/bin/gnuplot


#set logscale xy
set terminal pngcairo size 15in,15in
set xlabel 'Y[pc]'   font  "Times-Roman,30"
set ylabel 'Z[pc]'   font  "Times-Roman,30"
#set zlabel 'Z[pc]'   font  "Times-Roman,30"
set key top
set key  spacing 5.0
set xrange [-30:30]
set yrange [-30:30]
#set zrange [-30:30]
set key font "Times-Roman, 30"
set xtics font "Times-Roman, 30"
set ytics font "Times-Roman, 30"
#set ztics font "Times-Roman, 30"

set xtics  ("-30" -30,"-10" -10,"0" 0, "10" 10, "30" 30)
set ytics  ("-30" -30,"-10" -10,"0" 0, "10" 10,"30" 30)
#set ztics  ("-30" -30,"-10" -10, "10" 10,"30" 30)


do for [ii=0:7] {
	set output 'plot'.ii.'.png'


plot sprintf('%d',ii).'.txt'u 3:4 w d  t 't = '.ii.' Gyr'

}



#####################################################################

