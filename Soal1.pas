program dimas;
uses crt;

type
  TMahasiswa = record
    Nama: string[30];
    uas:integer;
    uts:integer;
    tugas:integer;
  end;

var 
data : array [1..50] of TMahasiswa;

begin 

function Grade(n: integer): char;
begin
  if N >= 85 then
    Grade := 'A'
  else if N >= 70 then
    Grade := 'B'
  else if N >= 55 then
    Grade := 'C'
  else if N >= 40 then
    Grade := 'D'
  else
    Grade := 'E';
end;

function HitungRata: real;
var
  k: integer;
  total: real;
begin
  total := 0;
  for k := 1 to n do
    total := total + nilai[k];
  HitungRata := total / n;
end;

procedure InputData;
var
  i: integer;
begin
  repeat
    write('Jumlah mahasiswa: ');
    readln(n);
  until (n >= 1) and (n <= 50);

  for i := 1 to n do
  begin
    writeln;
    writeln('Mahasiswa ke-', i);

    write('Nama: ');
    readln(Data[i].Nama);

    repeat
      write('nilai uas: ');
      readln(Data[i].uas); 
      
      write ('nilai uts: ');
      readln(Data[i].uts);

      write('nilai tugas: ');
      readln(Data[i].tugas);
      if (Data[i].uas,Data[i].tugas,Data[i].uts <0) and (Data[i].uas,Data[i].tugas,Data[i].uts >100) then
    until (Data[i].Nilai >= 0) and
          (Data[i].Nilai <= 100);
  end;

end.