program MultiplicacaoMatrizes;

uses
  sysutils;

type
  TMatrix = array of array of integer;

procedure le_matriz(var m: TMatrix; var n, p: integer; nome_arq: string);
var
  arq: text;
  i, j: integer;
begin
  assign(arq, nome_arq);
  reset(arq);
  read(arq, n, p);
  setlength(m, n, p);
  for i := 0 to n - 1 do
    for j := 0 to p - 1 do
      read(arq, m[i, j]);
  close(arq);
end;

procedure escreve_matriz(var m: TMatrix; n, p: integer; nome_arq: string);
var
  arq: text;
  i, j: integer;
begin
  assign(arq, nome_arq);
  rewrite(arq);
  writeln(arq, n, ' ', p);
  for i := 0 to n - 1 do
  begin
    for j := 0 to p - 1 do
    begin
      write(arq, m[i, j], ' ');
    end;
    writeln(arq);
  end;
  close(arq);
end;

procedure multiplica_matrizes(var m1, m2, m3: TMatrix; n, p, q: integer);
var
  i, j, k: integer;
begin
  for i := 0 to n - 1 do
    for j := 0 to q - 1 do
    begin
      m3[i, j] := 0;
      for k := 0 to p - 1 do
        m3[i, j] := m3[i, j] + m1[i, k] * m2[k, j];
    end;
end;

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