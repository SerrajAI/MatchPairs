program cartes_caches;
const minl=1;maxl=3;minc=1;maxc=4;
type cartes=array[minl..maxl,minc..maxc]of string ;
     cartesvrai=array[minl..maxl,minc..maxc]of string;

var c:cartes;
    d:cartesvrai ;
     e:string;
x,z,g,f,a,b,w,n,r,s,y:integer;



procedure Afficher(var O:cartesvrai);
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
  procedure affichercartes(var O:cartesvrai);   (*affecter cartes retournées au tableau *)

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
affichercartes(c);
afficher(c);

randomize;




c[1,1]:=':(';
c[1,2]:='(0)_(0)';
c[1,3]:='8)';
c[1,4]:=';)';

c[2,1]:='(X_X)';
c[2,2]:=':()';
c[2,3]:=chr(37);
c[2,4]:=chr(38);

c[3,1]:=chr(36);
c[3,2]:=chr(64);
c[3,3]:=chr(232);
c[3,4]:=chr(235);



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


writeln('ouups!!sorry !');

readln;
end.
