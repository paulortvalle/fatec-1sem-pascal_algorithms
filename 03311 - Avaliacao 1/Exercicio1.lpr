program Exercicio1;
// Alunos: Afabio Gumercindo Lima Junior (1511001)
//         Paulo Rogério Teruel Valle (1511031)

uses crt;

var num1: integer;
    num2: integer;

begin

    write('Digite um numero: ');
    read (num1);

    write('Digite outro numero: ');
    read (num2);

    if (num2 <> 0) then
       begin
            if (num1 mod num2 = 0) then
               write('O numero ', num1, ' eh multiplo de ', num2)
            else
               write(num1, ' nao eh multiplo de ', num2);
       end
    else
        write('Safadinho!!! ', num1, ' tambem eh multiplo de 0') ;

    readkey;

end.

