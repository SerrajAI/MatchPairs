program cartes_caches;
const minl=1;maxl=3;minc=1;maxc=4;
type cartes=array[minl..maxl,minc..maxc]of string ;
var c,d,l,m,n:cartes;
t,f,g,a,b,w,s:integer;



procedure Afficher(var O:cartes);
var i,j:integer;
begin

for i:= 1 to 3 do
  begin
  for j:=1 to 4 do
    begin
     write(O[i,j],' ');
    end;
  writeln(' ');
  writeln(' ');
end;
end;
  procedure affichercartes(var O:cartes);   (*affecter cartes retournées au tableau *)

var i,j:integer;
begin
for i:= 1 to 3 do
  begin
  for j:=1 to 4 do
    begin
     O[i,j]:=chr(176);
      
    end;
 
 end;
end;

begin

Randomize;
affichercartes(c);
affichercartes(n);
affichercartes(l);
{w:=random(3)+2;  Erreur : W doit être compris entre 1 et 3}
{s:=random(2)+3;  Même chose}
{t:=random(1)+3 ; Même chose}
{Remarque:Avec la technique que vous avez utilisé : t,s,w peuvent être égaux}
{Une autre version a utilisé :}

W:=Random(3)+1;
Repeat
S:=Random(3)+1 until S<>W;
Repeat
t:=Random(3)+1 until (t<>S) and (t<>W);
{ Vous allez avoir 3 nombres différent : 1,2,3}

c[w,1]:=':(';
c[w,2]:='(0)_(0)';
c[w,3]:='8)';
c[w,4]:=';)';

c[s,1]:='(X_X)';
c[s,2]:=':D';
c[s,3]:='(X_X)';
c[s,4]:=':(';

c[t,1]:='(0)_(0)';
c[t,2]:=';)';
c[t,3]:='8)';
c[t,4]:=':D';
afficher(n);
repeat
writeln('dooner les coordonnées de la carte 1 ');
readln(a,b) ;
affichercartes(d);
d[a,b]:=c[a,b];
afficher(d);
writeln();
writeln('donner les coordonnes de la carte 2 ');
readln(f,g);
d[f,g]:=c[f,g];
afficher(d);
writeln();

while (d[a,b]=d[f,g]) and (a<>g) do

   begin
   writeln('c''est bien ');
   writeln('');
   d[f,g]:=chr(32);
   d[a,b]:=chr(32);
   l[f,g]:=chr(32);
   l[a,b]:=chr(32);
   writeln('vous rejouez');
   afficher(d);
   writeln('dooner les coordonnées de la carte 1 ');
   readln(a,b) ;
   l[a,b]:=c[a,b];
   afficher(l);
   writeln();
   writeln('dooner les coordonnées de la carte 2 ');
   readln(f,g);
   l[f,g]:=c[f,g];
   afficher(l);
   writeln();
   end;
writeln('ouups!!sorry !');
afficher(l);


readln;
   until false;
end.
