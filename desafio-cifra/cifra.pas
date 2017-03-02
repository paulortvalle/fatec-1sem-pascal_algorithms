program cifra;

uses crt;

var
  i      : integer;
  texto  : string[146];
  ra     : string[7];
  hashra : integer;
  auxra  : integer;
  cript  : string[146];
  auxcrip: string;
  descrip: string[146];

begin

  // entrada dos valores para criptografia
  texto := 'O mundo e um lugar perigoso de se viver, nao por causa daqueles que fazem o mal, mas sim por causa daqueles que observam e deixam o mal acontecer.';
  ra:= '1511001';
  hashra:= 0;

  // gera a chave hash (beta) do ra
  for i:= 1 to length(ra) do begin
      val(ra[i],auxra);
      hashra := hashra +  auxra
  end;

  // função que criptografa o texto
  // executa o código para cada caracter do texto
  for i:= 1 to length(texto) do begin

      // converte o caracter do for em código ascii e soma com o hash de ra
      auxra := ord(texto[i]) + hashra;

      // converte o valor númerico em novo código ascii
      auxcrip := chr(ord(auxra));

      // concatena o novo caracter na frase
      cript:= concat(cript, auxcrip);
  end;


  // função que descriptografa o texto
  // executa o código para cada caracter do texto criptografado
  for i:= 1 to length(cript) do begin

      // converte o caracter do for em código ascii e subtrai com o hash de ra
      auxra := ord(cript[i]) - hashra;

      // converte o valor númerico em novo código ascii
      auxcrip := chr(ord(auxra));

      // concatena o novo caracter na frase descriptografada
      descrip:= concat(descrip, auxcrip);
  end;

  // exibe a frase criptografada
  writeln('FRASE CRIPTOGRAFADA:');
  writeln(cript);

  writeln('');
  writeln('');

  // exibe a frase descriptografada
  writeln('FRASE DESCRIPTOGRAFADA:');
  writeln(descrip);

  readln;

end.
