program verificadorNum;
{
 Devo entrar com 3 números;
 Quero encontrar o maior, o menor;
 A amplitude entre o maior e o menor;
 A média entre os números;
 Imprima os valores digitados e verifica se é par ou impar;
}

uses crt;
var val1 : integer;
    val2 : integer;
    val3 : integer;
    maior, menor : integer;
    amplitude: integer;
    media : real;
    resto : real;
    i : integer;

begin

  // le os valores dos numeros
  write ('Digite o valor do primeiro numero: ');
  readln(val1);
  writeln('Verificando o numero digitado...');
  writeln(' ');
  delay(500);

  write ('Digite o valor do segundo numero: ');
  readln(val2);
  writeln('Verificando o numero digitado...');
  writeln(' ');
  delay(500);

  write ('Digite o valor do terceiro numero: ');
  readln(val3);
  writeln('Verificando o numero digitado...');
  writeln(' ');
  delay(500);
  writeln(' ');
  for i:= 1 to 79 do
      begin
        write('.');
        delay(20);
      end;

   delay(500);
   writeln(' ');
   writeln('ENCONTRANDO O NUMERO MAIOR');
   writeln(' ');
   delay(1000);

   if (val1 > val2) AND (val1 > val3) then
      begin
          writeln('O maior numero digitado eh o primeiro: ', val1);
          maior := val1;
      end
   else
       begin
            if (val2 > val3) then
               begin
                   writeln('O maior numero digitado eh o segundo: ', val2);
                   maior := val2;
               end
            else
                begin
                     writeln('O maior numero digitado eh o terceiro: ', val3);
                     maior := val3;
                end;
       end;

   delay(500);
   writeln(' ');
   for i:= 1 to 79 do
       begin
            write('.');
            delay(20);
       end;
   delay(500);
   writeln(' ');
   writeln('ENCONTRANDO O NUMERO MENOR');
   writeln(' ');
   delay(1000);

   if (val1 < val2) AND (val1 < val3) then
      begin
          writeln('O menor numero digitado eh o primeiro: ', val1);
          menor := val1;
      end
   else
       begin
            if (val2 < val3) then
               begin
                   writeln('O menor numero digitado eh o segundo: ', val2);
                   menor := val2;
               end
            else
                begin
                     writeln('O menor numero digitado eh o terceiro: ', val3);
                     menor := val3;
                end;
       end;

   delay(500);
   writeln(' ');
   for i:= 1 to 79 do
       begin
            write('.');
            delay(20);
       end;
   delay(500);
   writeln(' ');
   writeln('ENCONTRANDO A AMPLITUDE ENTRE O MAIOR E O MENOR NUMERO');
   writeln(' ');
   delay(1000);

   amplitude := maior - menor;
   writeln('A amplitude entre os numeros ', maior, ' e ', menor, ' eh: ', amplitude);


   delay(500);
   writeln(' ');
   for i:= 1 to 79 do
       begin
            write('.');
            delay(20);
       end;
   delay(500);
   writeln(' ');
   writeln('ENCONTRANDO A MEDIA ENTRE OS NUMEROS');
   writeln(' ');
   delay(1000);

   media := val1 + val2 + val3 / 3;
   writeln('A media entre os numeros ', val1, ', ', val2, ' e ', val3, ' eh: ', media:0:5);




   delay(500);
   writeln(' ');
   for i:= 1 to 79 do
       begin
            write('.');
            delay(20);
       end;
   delay(500);
   writeln(' ');
   writeln('RESOLVENDO O SISTEMA DE PAR OU IMPAR');
   writeln(' ');
   delay(1000);

   resto := val1 mod 2;
   if (resto = 1) then
      writeln('O primeiro numero ', val1, ' eh impar!')
   else
     writeln('O primeiro numero ', val1, ' eh par!');

   delay(500);
   resto := val2 mod 2;
   if (resto = 1) then
      writeln('O segundo numero ', val2, ' eh impar!')
   else
     writeln('O segundo numero ', val2, ' eh par!');

   delay(500);
   resto := val3 mod 2;
   if (resto = 1) then
      writeln('O terceiro numero ', val3, ' eh impar!')
   else
     writeln('O terceiro numero ', val3, ' eh par!');

  {
  // apenas uma graça para zuar :)
  writeln('  ');
  writeln('Iniciando a resolucao da equacao!');
  writeln('  ');

  writeln('Verificando se o valor do numero A eh igual a zero...');
  delay(2000);
  // verifica se A = 0
  if (valA = 0) then
       writeln('Nao eh equacao do segundo grau, pois A = 0!')
  else
      begin

        writeln('O valor do numero A não eh zero!');
        delay(300);
        writeln('Iniciando o calculo do delta;');
        delay(300);

        write('delta = B*B - 4AC -> ');
        delay(200);
        write('delta = ',valB, '*', valB, ' - 4*',valA, '*', valC , ' -> ');
        delay(300);
        write('delta = ', valB*valB, ' - ', 4*valA*valB, ' -> ');
        delay(300);

        // encontra o valor de delta
        delta := (valB * valB) - (4 * valA * valC);

        write('delta = ', delta);
        delay(500);


        writeln(' ');
        writeln('Verificando se delta eh menor que zero...');
        delay(2000);

        // verifica se delta é maior que zero
        if (delta < 0) then
           writeln('Nao ha raizes reais para o numero, pois o delta eh menor que zero!')
        else
            begin
              writeln('Delta eh maior que zero, posso calcular os proximos valores!');
              delay(300);

              // realiza o calculo do x1 e do x2
              x1 :=  ((valB*-1) + sqrt(delta))/(2 * valA);
              x2 :=  ((valB*-1) - sqrt(delta))/(2 * valA);

              // mostra os resultados de x1 e x2
              writeln('Parabens!');
              writeln(' ');
              writeln('O valor de X1 eh: ', x1:0:3);
              writeln('O valor de X2 eh: ', x2:0:3);
            end;

      end;



  // primeira maneira de resolver o IF
  {resultado := numero mod 2;
  if (resultado = 0) then
      writeln('O numero ', numero, ' eh par!')
  else
      writeln('O numero ', numero, ' eh impar!');
   }
   }
  readkey;


end.

