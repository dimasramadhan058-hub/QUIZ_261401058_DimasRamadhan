program dimas;
uses crt;

type
  TBarang = record
    nama: string[30];
    harga: longint;
    qty: integer;
  end;
  TListBarang = array[1..50] of TBarang;

var
  belanja: TListBarang;
  n: integer;
  lagi: char;

function TotalPerItem(hrg: longint; jml: integer): longint;
begin
  TotalPerItem := hrg * jml;
end;

procedure CetakStruk(list: TListBarang; jmlData: integer);
var
  i: integer;
  subTotal, grandTotal: longint;
  diskon, bayar: real;
begin
  grandTotal := 0;
  writeln('=== STRUK BELANJA ===');
  for i := 1 to jmlData do
  begin
    subTotal := TotalPerItem(list[i].harga, list[i].qty);
    grandTotal := grandTotal + subTotal;
    writeln(i, '. ', list[i].nama, ' (', list[i].qty, 'x) = Rp', subTotal);
  end;

  if grandTotal >= 500000 then
    diskon := 0.15 * grandTotal
  else if grandTotal >= 200000 then
    diskon := 0.10 * grandTotal
  else if grandTotal >= 100000 then
    diskon := 0.05 * grandTotal
  else
    diskon := 0;

  bayar := grandTotal - diskon;
  writeln('---------------------');
  writeln('Total Belanja : Rp', grandTotal);
  writeln('Diskon        : Rp', diskon:0:0);
  writeln('Total Bayar   : Rp', bayar:0:0);
end;

begin
  clrscr;
  n := 0;
  repeat
    n := n + 1;
    writeln('Data Barang ke-', n);
    write('Nama Barang : '); readln(belanja[n].nama);
    write('Harga Satuan: '); readln(belanja[n].harga);
    write('Jumlah Beli : '); readln(belanja[n].qty);
    write('Tambah barang lagi? (Y/T): '); readln(lagi);
    writeln;
  until (upcase(lagi) = 'T') or (n = 50);

  CetakStruk(belanja, n);
end.
