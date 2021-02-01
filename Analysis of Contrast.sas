Title'Analysis of Contrast';
Data One;
Input Package Count @@;
Datalines;
1 7.66 1 6.98 1 7.80
2 5.26 2 5.44 2 5.80
3 7.41 3 7.33 3 7.04
4 3.51 4 2.91 4 3.66
;
Proc Glm Data=One;
Class Package;
Model count=package;
Contrast 'Kemasan vs Gas' Package 3 -1 -1 -1;
Contrast 'Vakum VS Gas' Pakage 0 2 -1 -1;
Run;
/*Package perlakuan*/
/*count angkanya*/
/*Semua perlakuan dihitung agar tahu perlakuan paling baik pada satuan percobaan*/
/*Hipotesis Analisis Contras (Perbandingan)*/
/*H0 : tidak ada perbedaan rata2  jumlah bakteri ada perlakuan kemasan dan gas*/
/*H1 : ada perbedaan rata2  jumlah bakteri ada perlakuan kemasan dan gas*/
/*Tolak Ho jika P-value < alpha atau F hitung > f tabel*/
/*Terima Ho jika P-value > alpha atau F hitung < f tabel*/

