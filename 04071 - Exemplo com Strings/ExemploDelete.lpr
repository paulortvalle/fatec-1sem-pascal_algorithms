program Exemplodelete;
//

uses crt;
var a:string;
    i:integer;
    n:integer;

begin

  write('Digite uma string: ');
  read(a);

  write('Digite um valor: ');
  read(i);

  write('Digite um valor: ');
  read(n);

  delete(a,i,n);
  writeln(a);

  readkey;

end.

