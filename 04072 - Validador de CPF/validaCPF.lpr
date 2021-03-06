program validaCPF;
// programa de validação de cpf em pascal

uses crt;

var cpfdig : string;
    cpfnum : string;
    cpfcorreto : string;
    aux1 : string;
    i : integer;
    p: integer;
    r: integer;
    soma: integer;
    digito1 : integer;
    digito2 : integer;


begin
   write('Digite o numero do cpf: ');
   read(cpfdig);

   // rotina para tirar pontos e acentos
   for i := 1 to length(cpfdig) do begin
      aux1 := copy(cpfdig,i,1);
      val(aux1, p, r);
      if (r = 0) then
         cpfnum := concat(cpfnum,aux1);
   end;

   soma := 0;
   // rotina para calcular o primeiro multiplicador
   for i:= 1 to 9 do begin
      aux1 := copy(cpfnum,i,1);
      val(aux1,p,r);
      soma := soma + ((11-i) * p);
      cpfcorreto := concat(cpfcorreto, aux1);
   end;
   soma := soma mod 11;

   if (soma < 2) then
      digito1 := 0
   else
      digito1 := 11-soma;

   str(digito1, aux1);
   cpfcorreto:=concat(cpfcorreto, aux1);

   soma := 0;
   // rotina para calcular o segundo multiplicador
   for i:= 1 to 10 do begin
      aux1 := copy(cpfcorreto,i,1);
      val(aux1,p,r);
      soma := soma + ((12-i) * p);
   end;
   soma := soma mod 11;

   if (soma < 2) then
      digito2 := 0
   else
      digito2 := 11-soma;

   str(digito2, aux1);
   cpfcorreto:=concat(cpfcorreto, aux1);

   // compara os cpfs digitados
   if (cpfcorreto = cpfnum) then
      writeln('CPF correto!')
   else
      writeln('CPF invalido! O valido deve ser ', cpfcorreto);

readkey;
end.

