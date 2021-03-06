program Exercicio4;
// Alunos: Afabio Gumercindo Lima Junior (1511001)
//         Paulo Rogério Teruel Valle (1511031)

uses crt;

var numero: integer;

begin

    // Recebe o valor do usuário
    write('Digite um numero: ');
    readln(numero);

    // Efetua um unico if e mostra na tela
    if (numero > 5) AND (numero < 15) AND (numero mod 2 = 1) AND (numero mod 7 = 0) then
       writeln('O numero esta correto para o exercicio!')
    else
       writeln('O numero ', numero, ' nao atende os requisitos!');

    // Solucao alternativa e mais completa (lusitano)
    if (numero < 5) then
       writeln('O numero deve ser maior ou igual a 5!')
    else
       begin
         if (numero > 15) then
            writeln('O numero deve ser menor ou igual a 15!')
         else
            begin
              if (numero mod 2 = 0) then
                 writeln('O numero deve ser impar!')
              else
                 begin
                   if(numero mod 7 <> 0) then
                     writeln('O numero deve ser multiplo de 7!')
                   else
                     writeln('O numero esta correto!');
                 end;
            end;
       end;

    readkey;
end.

