program MultiplicacaoMatrizes;

uses
  SysUtils, Matriz;

var
  m1, m2, m3: TMatrix;
  n, p, q, r: integer;
  arqA, arqB, arqC: string;

begin
  if ParamCount <> 3 then
  begin
    writeln('Uso: ', ParamStr(0), ' <arquivo_matriz_A> <arquivo_matriz_B> <arquivo_resultado>');
    exit;
  end;

  arqA := ParamStr(1);
  arqB := ParamStr(2);
  arqC := ParamStr(3);

  le_matriz(m1, n, p, arqA);
  le_matriz(m2, r, q, arqB);
  if r <> p then
  begin
    writeln('Erro: Número de colunas da primeira matriz diferente do número de linhas da segunda.');
    exit;
  end;
  if (n <> p) then
  begin
    writeln('Aviso: A primeira matriz não é quadrada, o que não atende aos requisitos especificados no trabalho. No entanto, como as matrizes são compatíveis para multiplicação, o resultado será calculado e apresentado.');
  end;
  if (r <> q) then
  begin
    writeln('Aviso: A segunda matriz não é quadrada, o que não atende aos requisitos especificados no trabalho. No entanto, como as matrizes são compatíveis para multiplicação, o resultado será calculado e apresentado.');
  end;
  if (n <> p) and (r <> q) then
  begin
    writeln('Aviso: As matrizes não são quadradas, o que não atende aos requisitos especificados no trabalho. No entanto, como as matrizes são compatíveis para multiplicação, o resultado será calculado e apresentado.');
  end;
  setlength(m3, n, q);
  multiplica_matrizes(m1, m2, m3, n, p, q);
  escreve_matriz(m3, n, q, arqC);
end.
