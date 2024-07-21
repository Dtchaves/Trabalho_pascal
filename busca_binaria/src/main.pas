program MainBuscaBinaria;

uses
  SysUtils, BuscaBinaria;

var
  v: vetor;
  n, x, pos: integer;

begin
  if ParamCount <> 2 then
  begin
    writeln('Uso: MainBuscaBinaria <arquivo> <inteiro k>');
    halt(1);
  end;

  le_vetor(v, n, ParamStr(1));
  x := StrToInt(ParamStr(2));

  pos := busca_binaria(v, n, x);
  if pos = 0 then
    writeln('Elemento não encontrado')
  else
    writeln('Elemento encontrado na posição ', pos);
end.