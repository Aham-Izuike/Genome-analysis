set terminal png tiny size 800,800
set output "/home/izuike/project_1/Genome-analysis/analysis/mummer_evaluation/mummerplot_flye_output/mummerplot_flye_output.png"
set ytics ( \
 "contig_1" 1.0, \
 "contig_11" 1362695.0, \
 "contig_12" 1377109.0, \
 "contig_13" 1409532.0, \
 "contig_14" 1611510.0, \
 "contig_2" 1630145.0, \
 "contig_3" 3044655.0, \
 "contig_4" 3047414.0, \
 "contig_5" 3086368.0, \
 "contig_6" 3151018.0, \
 "contig_8" 3154659.0, \
 "contig_9" 3181176.0, \
 "" 3192055 \
)
set size 1,1
set grid
unset key
set border 10
set tics scale 0
set xlabel "gi|1072833967|gb|CP014529.1|"
set ylabel "QRY"
set format "%.0f"
set mouse format "%.0f"
set mouse mouseformat "[%.0f, %.0f]"
set xrange [1:2765010]
set yrange [1:3192055]
set style line 1  lt 1 lw 3 pt 6 ps 1
set style line 2  lt 3 lw 3 pt 6 ps 1
set style line 3  lt 2 lw 3 pt 6 ps 1
plot \
 "/home/izuike/project_1/Genome-analysis/analysis/mummer_evaluation/mummerplot_flye_output/mummerplot_flye_output.fplot" title "FWD" w lp ls 1, \
 "/home/izuike/project_1/Genome-analysis/analysis/mummer_evaluation/mummerplot_flye_output/mummerplot_flye_output.rplot" title "REV" w lp ls 2
