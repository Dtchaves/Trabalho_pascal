unit Matriz;

interface

type
  TMatrix = array of array of integer;

procedure le_matriz(var m: TMatrix; var n, p: integer; nome_arq: string);
procedure escreve_matriz(var m: TMatrix; n, p: integer; nome_arq: string);
procedure multiplica_matrizes(var m1, m2, m3: TMatrix; n, p, q: integer);

implementation

uses
  SysUtils;

procedure le_matriz(var m: TMatrix; var n, p: integer; nome_arq: string);
var
  arq: TextFile;
  i, j: integer;
begin
  Assign(arq, nome_arq);
  Reset(arq);
  Read(arq, n, p);
  SetLength(m, n, p);
  for i := 0 to n - 1 do
    for j := 0 to p - 1 do
      Read(arq, m[i, j]);
  Close(arq);
end;

procedure escreve_matriz(var m: TMatrix; n, p: integer; nome_arq: string);
var
  arq: TextFile;
  i, j: integer;
begin
  Assign(arq, nome_arq);
  Rewrite(arq);
  WriteLn(arq, n, ' ', p);
  for i := 0 to n - 1 do
  begin
    for j := 0 to p - 1 do
    begin
      Write(arq, m[i, j], ' ');
    end;
    WriteLn(arq);
  end;
  Close(arq);
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

end.
