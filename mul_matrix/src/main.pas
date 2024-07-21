program MultiplicacaoMatrizes;

uses
  SysUtils, Matriz in '../include/Matriz.pas';

var
  m1, m2, m3: TMatrix;
  n, p, q: integer;
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
  le_matriz(m2, p, q, arqB);
  if n <> p then
  begin
    writeln('Erro: As matrizes devem ser quadradas e de mesma dimensão.');
    exit;
  end;
  setlength(m3, n, q);
  multiplica_matrizes(m1, m2, m3, n, p, q);
  escreve_matriz(m3, n, q, arqC);
end.
