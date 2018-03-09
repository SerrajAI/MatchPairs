Program Coquille;
Uses Graph;
Var Mode, Pilote : Smallint;
BEGIN
  Mode := Detect ;
  InitGraph(Pilote,Mode,'c:\bp\bgi');
  SetColor(white);
  begin
       begin
       Rectangle (50,50,50+80,50+100);
       SetFillStyle (slashFill,white);
       FloodFill (50+1,50+1,white);

       Rectangle (50+105,50,105+50+80,50+100);
       SetFillStyle (slashFill,white);
       FloodFill (50+1+105,50+1+25,white);


       Rectangle (50+210,50,210+50+80,50+100);
       SetFillStyle (slashFill,white);
       FloodFill (50+1+210,50+1+25,white);
       ReadLn;

       end;

       CloseGraph;
       end;
       end.
