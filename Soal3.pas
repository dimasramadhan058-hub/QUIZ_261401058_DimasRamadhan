program dimas;
uses crt;

var 
angka :integer;
n,menu:integer;

begin 
writeln('pilih menu');
writeln('1. angkaterkecil:');
writeln('2.angka terbesar');
writeln('3.angka positif');
writeln('4.angka negatif');
writeln('5.bilangan prima');
writeln('6. keluar');
write('pilih');
readln(menu);

repeat
case menu of
1:angkaterkecil;
2:angka terbesar;
3:angka positif;
4:angka negatif;
5:bilangan prima;
6:writeln('program selesai');
else 
writeln('pilihan tidak tersedia');

end;
until menu=6;