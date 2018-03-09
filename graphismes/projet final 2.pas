program cartes_cachees;
const minl=1;maxl=3;minc=1;maxc=4;
type cartes=array[minl..maxl,minc..maxc]of string ;

var d,c:cartes;
l,t,x,z,g,q,p,u,v,f,a,b,w,n,r,s,y:integer;



procedure Afficher(var O:cartes);
var i,j:integer;
begin
writeln;
writeln;
for i:=1 to 3 do
  begin
  write('                                                                 ');

  for j:=1 to 4 do
    begin
     write(O[i,j],' ');
    end;
  writeln;
  writeln;
end;
end;
  procedure affichercartes(var O:cartes);                                       (*affecter cartes retournées au tableau *)

var i,j:integer;
begin
for i:= 1 to 3 do
  begin
  for j:=1 to 4 do
    begin
     O[i,j]:= concat(chr(176),chr(176));
      
    end;
 
 end;
end;

begin

Randomize;
affichercartes(c);
affichercartes(d);
afficher(c);
W:=Random(3)+1;
Repeat
S:=Random(3)+1 until S<>W;
Repeat
t:=Random(3)+1 until (t<>S) and (t<>W);
{ Vous allez avoir 3 nombres différent : 1,2,3}

c[w,1]:=':(';
c[w,2]:=':S';
c[w,3]:=':D';
c[w,4]:=';)';

c[s,1]:=':O';
c[s,2]:=':P';
c[s,3]:=':(';
c[s,4]:=':S';

c[t,1]:=':D';
c[t,2]:=';)';
c[t,3]:=':O';
c[t,4]:=':P';


repeat
      begin

      for l:=1 to 2 do                                                                (*Joueurs 1&2 a chaqun son tour*)
      begin

           writeln;
           writeln;
           write(' ');
           writeln('joueur ',l,' ');                                                       (*joueur 1 a vous de jouer*)
           write(' ');
           writeln('dooner les coordonnées de la carte 1 ');                               (*choisir l'emplacement de la première carte a devoiler*)
           readln(a,b) ;
           d[a,b]:=c[a,b];                                                                 (*affichage de la première carte choisie*)
           afficher(d);
           writeln;
           writeln('donner les coordonnes de la carte 2 ');                                (*choisir l'emplacement de la deuxième carte a devoiler*)
           readln(f,g);
           d[f,g]:=c[f,g];
           afficher(d);                                                                    (*affichage de la deuxième carte choisie*)
           writeln;
                   while (d[a,b]=d[f,g]) and ((a<>f) and (b<>g)) do
                           begin                                                     (*tant que le joueur trouve une paire de deux cartes differentes *)
                            begin
                            if l=1 then
                               begin
                               q:=q+1;
                               end
                            else
                                begin
                                p:=p+1;
                                end;                                                                         (*on ajoute 1 au compteur de victoire*)
                   writeln('c''est bien ');                                                     (*on remplace la paire par deux points*)
                   writeln('');
                   d[f,g]:=('..');
                   d[a,b]:=('..');
                   writeln('vous rejouez');                                                     (*on invite l'utilisateur a rejouer*)
                   afficher(d);
                   write('');
                   writeln('dooner les coordonnes de la carte 1 ');                             (*choisir l'emplacement de la première carte a devoiler*)
                   readln(a,b) ;
                   d[a,b]:=c[a,b];
                   afficher(d);                                                                 (*affichage de la première carte choisie*)
                   writeln();
                   writeln('dooner les coordonnées de la carte 2 ');                            (*choisir l'emplacement de la deuxième carte a devoiler*)
                   readln(f,g);
                   d[f,g]:=c[f,g];
                   afficher(d);                                                                 (*affichage de la deuxième carte choisie*)
                   writeln();
                      end;
                            end;
                   if (d[a,b]<>d[f,g]) and ((a=f) or (b=g))  then                                                    (*si les deux cartes choisies ne forment pas une paire oubien que le joueur a retourné les memes cartes, on retourne les 2 cartes devoilées puis on passe la main au joueur 2*)
                                        begin
                                        writeln('oops!!sorry !');
                                        afficher(d);
                                        d[a,b]:=concat(chr(176),chr(176));
                                        d[f,g]:=concat(chr(176),chr(176));
                                        end;
                           if (q>=3)or (p>=3) then

                      begin
                      writeln(' le gagnant c''est le joueur ',l,' ');
                      writeln(' fin de partie ');
                      readln;
                      end;
      end; (*for  *)
      end;                     (*repeat*)
until
(q>=3) or (p>=3);


end.
