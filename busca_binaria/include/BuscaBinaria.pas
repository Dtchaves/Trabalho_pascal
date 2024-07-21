unit BuscaBinaria;

interface

const
  MAX = 100;

type
  vetor = array[1..MAX] of integer;

procedure le_vetor(var v: vetor; var n: integer; nome_arq: string);
procedure imprime_vetor(v: vetor; n: integer);
function busca_binaria(v: vetor; n, x: integer): integer;

implementation

uses
  SysUtils;

procedure le_vetor(var v: vetor; var n: integer; nome_arq: string);
var
  arq: TextFile;
  i: integer;
begin
  Assign(arq, nome_arq);
  Reset(arq);
  n := 0;
  while not EOF(arq) do
  begin
    Inc(n);
    Read(arq, v[n]);
  end;
  Close(arq);
end;

procedure imprime_vetor(v: vetor; n: integer);
var
  i: integer;
begin
  for i := 1 to n do
    write(v[i], ' ');
  writeln;
end;

function busca_binaria(v: vetor; n, x: integer): integer;
var
  ini, fim, meio: integer;    
begin
  ini := 1;
  fim := n;
  while ini <= fim do
  begin
    meio := (ini + fim) div 2;
    if x = v[meio] then
    begin
      busca_binaria := meio;
      exit;
    end
    else if x < v[meio] then
      fim := meio - 1
    else
      ini := meio + 1;
  end;
  busca_binaria := 0;
end;

end.