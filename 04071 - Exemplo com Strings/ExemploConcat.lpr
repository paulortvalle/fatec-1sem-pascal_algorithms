program ExemploConcat;
// Concatena duas ou mais strings
uses crt;
var
  a: string;
  b: string;
  c: string;

begin

  write('Digite a primeira string: ');
  readln(a);

  write('Digite a segunda string: ');
  readln(b);

  c := concat(a, ' ', b);
  write(c);

  readkey;

end.

