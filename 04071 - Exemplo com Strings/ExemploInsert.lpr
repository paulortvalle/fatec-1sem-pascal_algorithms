program ExemploInsert;
//

uses crt;
var a:string;
    b:string;
    i:integer;

begin

  write('Digite uma string: ');
  readln(a);

  write('Digite uma string: ');
  readln(b);

  write('Digite um valor: ');
  readln(i);

  insert(a,b,i);
  writeln(b);

  readkey;

end.
