program cartes_caches;
const minl=1;maxl=3;minc=1;maxc=4;
type cartes=array[minl..maxl,minc..maxc]of string ;

var d,c:cartes;
l,t,x,z,g,f,a,b,w,n,r,s,y:integer;



procedure Afficher(var O:cartes);
var i,j:integer;
begin
writeln;
writeln;
for i:=1 to 3 do
  begin
  write('                                      ');

  for j:=1 to 4 do
    begin
     write(O[i,j],' ');
    end;
  writeln;
  writeln;
end;
end;
  procedure affichercartes(var O:cartes);   (*affecter cartes retourn�es au tableau *)

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
affichercartes(d);
afficher(c);
{w:=random(3)+2;  Erreur : W doit �tre compris entre 1 et 3}
{s:=random(2)+3;  M�me chose}
{t:=random(1)+3 ; M�me chose}
{Remarque:Avec la technique que vous avez utilis� : t,s,w peuvent �tre �gaux}
{Une autre version a utilis� :}

W:=Random(3)+1;
Repeat
S:=Random(3)+1 until S<>W;
Repeat
t:=Random(3)+1 until (t<>S) and (t<>W);
{ Vous allez avoir 3 nombres diff�rent : 1,2,3}

c[w,1]:=':(';
c[w,2]:=':S';
c[w,3]:='8D';
c[w,4]:=';)';

c[s,1]:=':O';
c[s,2]:=':P';
c[s,3]:=':(';
c[s,4]:=':S';

c[t,1]:='8D';
c[t,2]:=';)';
c[t,3]:=':O';
c[t,4]:=':P';


repeat
begin
for l:=1 to 2 do
begin
writeln;
writeln;
write(' ');
writeln('joueur ',l,' ');
write(' ');
writeln('dooner les coordonn�es de la carte 1 ');
readln(a,b) ;
d[a,b]:=c[a,b];
afficher(d);
writeln;
writeln('donner les coordonnes de la carte 2 ');
readln(f,g);
d[f,g]:=c[f,g];
afficher(d);
writeln;
while (d[a,b]=d[f,g]) and (a<>f) do
   begin
   writeln('c''est bien ');
   writeln('');
   d[f,g]:=chr(32);
   d[a,b]:=chr(32);
   writeln('vous rejouez');
   afficher(d);
   write('');
   writeln('dooner les coordonn�es de la carte 1 ');
   readln(a,b) ;
   d[a,b]:=c[a,b];
   afficher(d);
   writeln();
   writeln('dooner les coordonn�es de la carte 2 ');
   readln(f,g);
   d[f,g]:=c[f,g];
   afficher(d);
   writeln();
   end;
   if d[a,b]<>d[f,g] then
   begin
   d[a,b]:=chr(176);
   d[f,g]:= chr(176);
   end;
writeln('ouups!!sorry !');
afficher(d);
end;
end;
until false;

readln;
end.
