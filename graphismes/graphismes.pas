program GraphTest;
 
uses
  Graph;
 
var
  Gm, Gd: smallint;
  i,j:integer;

begin

writeln('Bienvenue au jeu de cartes ');
 begin
       Gd := Detect;
       Gm := 0;
       InitGraph(Gd, Gm, '');
       if GraphResult = grOk then
       begin
       Rectangle (150,150,80,100);
       Moverel (100,100);
       Rectangle (100,100,80,100);
       ReadLn;
       CloseGraph;
       end;
       end
end.
