Program Coquille;
Uses Graph;
Var r, a, Mode, Pilote : Smallint;
BEGIN
  Mode := Detect ;
  InitGraph(Pilote,Mode,'c:\bp\bgi');
  SetColor(Yellow);
  begin
       Rectangle (50,50,130,150);
       SetFillStyle ( HatchFill,white);
       FloodFill (51,51,yellow);
       ReadLn;
       CloseGraph;
       end;
END.
(*KHOUK RAAAAH M9AAAAAAAAAAAAAAAWED ;)*)
