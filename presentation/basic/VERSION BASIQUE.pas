Program cartes_caches;

Uses CRT;

Const minl=1;maxl=3;minc=1;maxc=4;

Type cartes=array[minl..maxl,minc..maxc]of string ;

Var d,c:cartes;
    q,l,t,g,f,a,b,w,s,p:integer;
    resultat :Boolean;

procedure erreur(x,y :integer);
begin
while (x>maxl) OR (y>maxc) do
begin
writeln('ATTENTION! Donnez un emplacement valide de la carte :');
readln(x,y);
end;
end;


procedure Afficher(var O:cartes);
var  i,j:integer;

begin
for i:= 1 to 3 do
  begin
  for j:=1 to 4 do
    begin
     write(O[i,j]);
     write('  ');
    end;
  writeln;
  writeln;
  writeln;
end;
end;


procedure affichercartes(var O:cartes);
var i,j:integer;
begin
for i:= 1 to 3 do
  begin
  for j:=1 to 4 do
    begin
     O[i,j]:=CONCAT(chr(176),chr(176));
      
    end;
 
 end;
end;




begin

P:=0;
q:=0;

Randomize;
affichercartes(c);
affichercartes(d);

W:=Random(3)+1;
Repeat
S:=Random(3)+1 until S<>W;
Repeat
t:=Random(3)+1 until (t<>S) and (t<>W);

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

Resultat:=False;

repeat
begin
     for l:=1 to 2 do
     begin
     afficher(d);
     write('Joueur ',l,' C''est votre tour...  ');
        if l=1 then
        write( '     ( Votre Score est de  ' ,q,'  PTS )')
        else
          begin
          write( '     ( Votre Score est de  ' ,p,'  PTS )') ;
          end;
     writeln;
     writeln;
     writeln('Inserez l''emplacement de la premiere carte a devoiler :');
     readln(a,b) ;
     erreur(a,b);
     d[a,b]:=c[a,b];
     afficher(d);
     writeln;
     writeln('Inserez l''emplacement de la deuxieme carte a devoiler :');
     readln(f,g);
     erreur(f,g);
     d[f,g]:=c[f,g];
     afficher(d);
     writeln;

               while (d[a,b]=d[f,g]) and ((a<>f) and (b<>g)) and (d[a,b]<>'..') and (d[f,g]<>'..')  do
               begin
                    if l=1 then
                    begin
                    q:=q+1;
                    end
                    else
                    begin
                    p:=p+1;
                    end;
                         if (q>3)or (p>3) then
                    begin
                    Resultat:=True;
                     writeln(' Le gagnant c''est le joueur ',l,' ');
                      writeln(' Fin de partie ');
                       readln;
                        Break;
                         Break;
                         end;

                         if (q=3) and (p=3) then
                    begin
                    Resultat:=True;
                     writeln(' Match null.');
                     readln;
                      writeln(' Fin de partie. ');
                        Break;
                         Break;
                         end;

   writeln('Bien joue !!!');
   writeln('');
   d[f,g]:='..';
   d[a,b]:='..';
   writeln('Tentez encore ...');
   delay(1700);
   clrscr;
   afficher(d);
   if l=1 then
     write( ' ( Votre Score est de  ' ,q,'  PTS )')
     else
     begin
     write( ' ( Votre Score est de  ' ,p,'  PTS )') ;
     end;
     writeln;
     writeln;
   writeln('Inserez l''emplacement de la premiere carte a devoiler  :');
   readln(a,b) ;
   erreur(a,b);
   d[a,b]:=c[a,b];
   afficher(d);
   writeln;
   writeln('Inserez l''emplacement de la deuxiemel carte a devoiler :');
   readln(f,g);
   erreur(f,g);
   d[f,g]:=c[f,g];
   afficher(d);
   writeln;
   end;
           if (d[a,b]<>d[f,g]) or ((a=f) and (b=g)) or (d[a,b]='..') and (d[f,g]='..') then
               begin
                writeln('Vous n''avez pas trouve de paire. Le tour passe...');
                delay(1700);
                clrscr;
                d[a,b]:=CONCAT(chr(176),chr(176));
                d[f,g]:= CONCAT(chr(176),chr(176));
               END;
           if Resultat then break;
 end;
 end;
until Resultat ;
readln;
end.
