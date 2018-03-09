Program Coquille;
Uses Crt, Graph;
const
  i=305;
  j=75;
Var Mode, Pilote : Smallint;
k:integer;
BEGIN
  Mode := Detect ;
  InitGraph(Pilote,Mode,'c:\bp\bgi');
  SetColor(white);
  SetTextStyle(3,0,2);
  begin
  outtextxy(293,8,'BIENVENUE AU JEU DE CARTES CACHEES , LA PARTIE VA COMMENCER DANS UN INSTANT ... ');
   k:=1;
       repeat
       begin
       delay(350);
       Rectangle (i+(k-1)*105,j,i+80+(k-1)*105,j+100);
       SetFillStyle (SlashFill,white);
       FloodFill (i+15+(k-1)*105,j+15+(k-1)*5,white);
       k:=k+1;
       end
       until k=13;
  end;

       delay(1000);
       outtextxy(787,650,'A VOUS DE JOUER !!!');
       Delay(2200);
       CloseGraph;
       end.











       (*http://cyberzoide.developpez.com/info/turbo/chap11.php3*)
