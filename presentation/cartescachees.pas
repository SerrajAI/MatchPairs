 program cartes_caches;
USES CRT,graph;
const minl=1;maxl=50;minc=1;maxc=50;
type cartes=array[minl..maxl,minc..maxc]of string ;
var d,c:cartes;
joueur,niveau,i,q,l,t,g,f,a,b,w,s,p,z,e:integer;
resultat :Boolean;


procedure Afficher(var O:cartes; niv3,niv4:integer);
var i,j:integer;

begin
  WRITELN;
  writeln;
for i:= 1 to niv3 do
  begin
  WRITE('                                       ');
  for j:=1 to niv4 do
    begin
     write(O[i,j]);
     write('  ');
    end;
  writeln;
  writeln;
  writeln;
end;
end;
  procedure affichercartes(var O:cartes; niv3,niv4:integer);   (*affecter cartes retournées au tableau *)

var i,j:integer;
begin
for i:= 1 to niv3 do
  begin
  for j:=1 to niv4 do
    begin
     O[i,j]:=CONCAT(chr(176),chr(176));
      
    end;
 
 end;
end;
procedure cartesaff;
begin
gotoXY(3,3);

     for i:=1 to 6 do
     begin
    textcolor(Lightred);
     write('*');
     end;
     writeln;

     for i:=1 to 6 do
     begin
     WRITE('  ');
      textcolor(Lightred);
     writeln('*');
     end;
gotoXY(3,9);
for i:=1 to 6 do
     begin
     textcolor(Lightred);
     write('*');
     end;

gotoXY(20,3);
for i:=0 to 6 do
begin
textcolor(cyan);
gotoxy(20-i,3+i);
writeln('*');
end;

for i:=0 to 6 do
begin
gotoxy(21+i,3+i);
writeln('*');
end ;

gotoxy(18,6);
for i:=1 to 6 do
begin
write('*');
end;


FOR i:=0 to 6 do
begin
textcolor(DarkGray);
gotoxy(30,3+i);
writeln('*');
END;

gotoxy(30,3);
FOR I:= 1 TO 5 DO
BEGIN
gotoxy(30+i,3);
WRITE('*');
end;

gotoxy(35,3);
FOR i:= 0 TO 3 DO
BEGIN
gotoxy(35,3+i);
WRITELN('*');
end;

gotoxy(30,6);
FOR i:= 0 TO 5 DO
BEGIN
gotoxy(30+i,6);
WRITELN('*');
end;

gotoxy(30,6);
for i:=0 to 3 do
begin
gotoxy(30+i+1,6+i);
writeln('*');
end;

gotoxy(40,3);
for i:=1 to 8 do
begin
textcolor(Lightred);
write('*');
end;


gotoxy(44,3);
for i:=0 to 6 do
begin
gotoxy(43,3+i);
writeLN('*');
end;


gotoxy(51,3);
for i:=1 to 5 do
begin
textcolor(cyan);
write('*');
end;


gotoxy(51,3);
for i:=1 to 6 do
begin
gotoxy(51,3+i);
writeLN('*');
end;



gotoxy(51,9);
for i:=1 to 5 do
begin
write('*');
end;

gotoxy(51,6);
for i:=1 to 5 do
begin
write('*');
end;

gotoxy(61,3);
for i:=1 to 9 do
begin
textcolor(DarkGray);
write('*');
end;

gotoxy(61,3);
for i:=1 to 3 do
begin
gotoxy(61,3+i);
writeLN('*');
end;

gotoxy(61,6);
for i:=1 to 8 do
begin
write('*');
end ;

gotoxy(69,3);
for i:=0 to 3 do
begin
gotoxy(69,6+i);
writeLN('*');
end;

gotoxy(61,9);
for i:=1 to 8 do
begin
write('*');
end ;


gotoXY(3,14);

     for i:=1 to 6 do
     begin
     textcolor(LightRed);
     write('*');
     end;
     writeln;

     for i:=1 to 6 do
     begin
     WRITE('  ');
     writeln('*');
     end;

gotoXY(3,20);
for i:=1 to 6 do
     begin
     write('*');
     end;

gotoXY(20,14);
for i:=0 to 6 do
begin
 textcolor(Cyan);
gotoxy(20-i,14+i);
writeln('*');
end;

for i:=0 to 6 do
begin
gotoxy(21+i,14+i);
writeln('*');
end ;

gotoxy(18,17);
for i:=1 to 6 do
begin
write('*');
end;



     gotoXY(30,14);
     for i:=1 to 6 do
     begin
     textcolor(darkgray);
     write('*');
     end;

     gotoXY(30,14);
     for i:=0 to 6 do
     begin
     gotoXY(30,14+i);
     writeln('*');
     end;

    gotoXY(30,20);
    for i:=1 to 6 do
     begin
     write('*');
     end;


      gotoXY(39,14);
     for i:=0 to 6 do
     begin
     textcolor(LightRed);
     gotoXY(39,14+i);
     writeln('*');
     end;


     gotoXY(39,17);
     for i:=1 to 6 do
     begin
     write('*');
     end;

     gotoXY(44,17);
     for i:=0 to 3 do
     begin
     gotoXY(44,17+i);
     writeln('*');
     end;

    gotoxy(49,13);
for i:=0 to 2 do
begin
textcolor(darkgray);
gotoxy(49+i,13-i);
writeLN('*');
end;


     gotoxy(47,14);
for i:=1 to 5 do
begin
textcolor(cyan);
write('*');
end;


gotoxy(47,14);
for i:=1 to 6 do
begin
gotoxy(47,14+i);
writeLN('*');
end;



gotoxy(47,20);
for i:=1 to 5 do
begin
textcolor(cyan);
write('*');
end;

gotoxy(47,17);
for i:=1 to 5 do
begin
write('*');
end;



        gotoxy(55,14);
for i:=1 to 5 do
begin
textcolor(LightRed);
write('*');
end;


gotoxy(55,14);
for i:=1 to 6 do
begin
gotoxy(55,14+i);
writeLN('*');
end;



gotoxy(55,20);
for i:=1 to 5 do
begin
write('*');
end;

gotoxy(55,17);
for i:=1 to 5 do
begin
write('*');
end;



gotoxy(63,14);
for i:=1 to 9 do
begin
textcolor(cyan);
write('*');
end;

gotoxy(63,14);
for i:=1 to 3 do
begin
gotoxy(63,14+i);
writeLN('*');
end;

gotoxy(63,17);
for i:=1 to 8 do
begin
write('*');
end ;

gotoxy(71,17);
for i:=0 to 3 do
begin
gotoxy(71,17+i);
writeLN('*');
end;

gotoxy(63,20);
for i:=1 to 8 do
begin
write('*');
end ;
delay(2000);
clrscr;
end;



procedure finpartie;


begin

gotoxy(7,7);
textcolor(cyan);
for i:=1 to 5 do
begin
write('*');
end;

gotoxy(7,7);
for i:=1 to 6 do
begin
gotoxy(7,7+i);
writeln('*');
end;


gotoxy(7,9);
for i:=1 to 5 do
begin
write('*');
end;


 gotoxy(14,7);
for i:=1 to 5 do
begin
write('*');
end;


gotoxy(14,7);
for i:=1 to 6 do
begin
gotoxy(14,7+i);
writeln('*');
end;

gotoxy(14,10);
for i:=1 to 5 do
begin
write('*');
end;


gotoxy(14,13);
for i:=1 to 5 do
begin
write('*');
end;

gotoxy(22,6);
for i:=1 to 7 do
begin
gotoxy(22,6+I);
writeLN('*');
end;


gotoxy(22,13);
for i:=1 to 5 do
begin
write('*');
end ;

gotoxy(30,7);
for i:=1 to 5 do
begin
write('*');
end ;

gotoxy(32,7);
for i:=1 to 6 do
begin
gotoxy(32,7+I);
writeLN('*');
end ;

gotoxy(30,13);
for i:=1 to 5 do
begin
write('*');
end ;



gotoxy(39,7);
for i:=1 to 4 do
begin
write('*');
end ;

gotoxy(39,7);
for i:=1 to 6 do
begin
gotoxy(39,7+i);
writeln('*');
end ;

gotoxy(39,13);
for i:=1 to 4 do
begin
write('*');
end ;

 gotoxy(47,7);
for i:=1 to 5 do
begin
write('*');
end ;

gotoxy(49,7);
for i:=1 to 6 do
begin
gotoxy(49,7+I);
writeLN('*');
end ;

gotoxy(47,13);
for i:=1 to 5 do
begin
write('*');
end ;


 gotoxy(54,7);
for i:=1 to 5 do
begin
write('*');
end ;


gotoxy(56,7);
for i:=1 to 6 do
begin
gotoxy(56,7+I);
writeLN('*');
end ;


gotoxy(66,7);
for i:=1 to 6 do
begin
gotoxy(66-I,7+I);
writeLN('*');
end ;

  gotoxy(65,6);
for i:=1 to 7 do
begin
gotoxy(65+I,6+I);
writeLN('*');
end ;


gotoxy(64,10);
for i:=1 to 5 do
begin
write('*');
end ;


gotoxy(71,7);
for i:=1 to 7 do
begin
write('*');
end ;



gotoxy(74,7);
for i:=1 to 6 do
begin
gotoxy(74,7+I);
writeLN('*');
end ;


 gotoxy(80,7);
for i:=1 to 7 do
begin
write('*');
end ;



gotoxy(83,7);
for i:=1 to 6 do
begin
gotoxy(83,7+I);
writeLN('*');
end ;

gotoxy(80,13);
for i:=1 to 7 do
begin
write('*');
end ;


gotoxy(89,13);
for i:=1 to 6 do
begin
write('*');
end ;


gotoxy(94,7);
for i:=1 to 6 do
begin
gotoxy(94,7+I);
writeLN('*');
end ;




       gotoxy(89,13);
for i:=1 to 6 do
begin
write('*');
end ;


 gotoxy(89,7);
for i:=1 to 6 do
begin
gotoxy(89,7+I);
writeLN('*');
end ;



    gotoxy(89,7);
for i:=1 to 6 do
begin
write('*');
end ;




          gotoxy(91,7);
for i:=1 to 3 do
begin
gotoxy(91,7+I);
writeLN('*');
end ;

gotoxy(91,10);
for i:=1 to 3 do
begin
write('*');
end ;


gotoxy(98,7);
for i:=0 to 6 do
begin
gotoxy(98,7+I);
writeLN('*');
end ;


gotoxy(98,7);
for i:=0 to 6 do
begin
gotoxy(98+I,7+I);
writeLN('*');
end ;



gotoxy(104,7);
for i:=0 to 6 do
begin
gotoxy(104,7+I);
writeLN('*');
end ;


textcolor(darkgray);
gotoxy(110,7);
for i:=0 to 6 do
begin
gotoxy(110,7+I);
writeLN('*');
end ;
textcolor(darkgray);
 gotoxy(111,7);
for i:=0 to 6 do
begin
gotoxy(111,7+I);
writeLN('*');
end ;

gotoxy(110,15);

for i:=0 to 1 do
begin
write('*');
end ;


gotoxy(110,16);
for i:=0 to 1 do
begin
write('*');
end ;

    textcolor(darkgray);

     delay(999);
 gotoxy(59,18);
 write('*');

 gotoxy(50,20);
 write('*');


 gotoxy(59,18);
 write('*');
            textcolor(lightred);
 delay(99);

 gotoxy(50,20);
 write('*');


  gotoxy(4,18);
 write('*');
     textcolor(cyan);

 gotoxy(15,20);
 write('*');
      textcolor(red);
     delay(1279);
  gotoxy(2,2);
 write('*');

 gotoxy(5,5);
 write('*');



  gotoxy(34,2);
 write('*');

 gotoxy(56,5);
 write('*');

           gotoxy(96,2);
 write('*');

 gotoxy(45,25);
 write('*');



   gotoxy(66,2);
 write('*');

 gotoxy(45,5);
 write('*');


    gotoxy(76,1);
 write('*');

 gotoxy(87,4);
 write('*');
 textcolor(cyan);
 delay(999);

  end;





begin

cartesaff;
writeln(' Regles du jeu :');
writeln;
writeln;
writeln;
writeln(' * Principe du jeu :');
writeln;
writeln;
writeln(' Le jeu se compose de plusieurs cartes comportant des paires de SMILEYS.');
writeln;
writeln;
writeln(' Au debut les cartes sont retournees .');
writeln;
writeln(' le joueur devoile deux cartes de son choix:');
writeln;
writeln;
writeln(' - Si elles sont identiques elles sont retirees de la table ; vous gagnez un point . ');
writeln;
writeln;
writeln(' - Sinon, on les retourne face cachee dans leur emplacement de depart ; vous conservez votre score . ');
writeln;
writeln;
writeln(' Le but jeu est de retourner le maximum possible de cartes . ');
writeln;
writeln;
writeln(' La partie s''acheve quand toutes les paires seront trouvees . ');
writeln;
writeln;
writeln('** Comment y jouer ?');
writeln;
writeln;
writeln(' Vous commencez par choisir le mode de jeu . ');
writeln;
writeln(' 1 Mode SURVIE: Ayez le courage de trouver le maximum de paire possible .');
writeln;
writeln(' 2 Mode VERSUS: Affrontez vos amis dans une partie a deux et montrez leur qui est le plus fort .' );
writeln;
writeln(' Vous choisissez ensuite le niveau de difficultee: 1-MORTEL 2-TITAN 3-DIEU .');
writeln;
writeln(' Commencez la partie en choisissant l''emplacement de chaque carte a devoiler .');
writeln;
writeln(' Le choix s''effectue en donnant les coordonnees ligne + colonne de la carte a devoiler .');
writeln;
writeln(' Par exemple si vous entrez 2 suivi de 1 la carte dans la ligne 2 et la colonne 1 va se retourner .');
writeln;
writeln;
writeln;
writeln(' *** Remarques :');
writeln;
writeln;
writeln(' Si vous retournez la meme carte vous perdez votre tour .');
writeln;
writeln(' Il faut entrer des coordonnees valides en respectant la taille de la table de cartes .');
writeln;
writeln;
write('                                                   PROUDLY PRESENTED BY :                                                ');
writeln;
writeln;
writeln('                                         SERRAJ ANDALOUSSI Idriss & TAHIRI Moad                                       ');
writeln;
writeln('                                                 ENJOY ! & HAVE FUN !!!                                               ');
readln;

clrscr;
writeln(' Choisissez le mode de jeu ');
writeln(' I- SURVIE                II- VERSUS ');
readln(joueur);
delay(1000);
clrscr;
writeln('    Choissisez le niveau de difficulte :');
writeln;
writeln;
writeln('  I-MORTEL ');
writeln;
writeln;
writeln('  II-TITAN ');
writeln;
writeln;
writeln('  III-DIEU ');
readln (niveau);
delay(1000);
clrscr;

if joueur =1 then
BEGIN
IF NIVEAU=3 then
 begin
P:=0;

Randomize;
affichercartes(c,4,6);
affichercartes(d,4,6);

W:=Random(4)+1;
Repeat
S:=Random(4)+1 until S<>W;
Repeat
t:=Random(4)+1 until (t<>S) and (t<>W);
{ Vous allez avoir 3 nombres différent : 1,2,3}
repeat
Z:=random(4)+1 until (z<>S) and (z<>W) and (z<>t) ;

c[w,1]:=':(';
c[w,2]:=':S';
c[w,3]:='8D';
c[w,4]:=';)';
c[w,5]:=':O';
c[w,6]:=':P';

c[t,1]:='<3';
c[t,2]:=':D';
c[t,3]:=':/';
c[t,4]:=':@';
c[t,5]:=':3';
c[t,6]:='o.O';

c[Z,1]:=':(';
c[Z,2]:=':S';
c[Z,3]:='8D';
c[Z,4]:=';)';
c[z,5]:=':O';
c[z,6]:=':P';

c[s,1]:='<3';
c[s,2]:=':D';
c[s,3]:=':/';
c[s,4]:='o.O';
c[s,5]:=':@';
c[s,6]:=':3';

Resultat:=False;

repeat
     begin
     textcolor(CYAN);
     afficher(d,4,6);
     textcolor(WHITE);
     write( '                                   ( Votre Score est de  ' ,p,'  PTS )') ;
     writeln;
     writeln;
     writeln('Inserez l''emplacement de la premiere carte a devoiler :');
     readln(a,b) ;
     d[a,b]:=c[a,b];
     textcolor(CYAN);
     afficher(d,4,6);
     writeln();
     textcolor(WHITE);
     writeln('Inserez l''emplacement de la deuxieme carte a devoiler :');
     readln(f,g);
     d[f,g]:=c[f,g];
     textcolor(CYAN);
     afficher(d,4,6);
     writeln();

               while (d[a,b]=d[f,g])   do
               begin

                    p:=p+1;

                         if (p=12) then
                    begin
                    Resultat:=True;
                      writeln(' Fin de partie ');
                      delay(2000);
                      clrscr;
                      finpartie;
                        Break;
                         Break;
                         end;

   textcolor(LIGHTGREEN);
   writeln('Bien joue !!!');
   writeln('');
   d[f,g]:='..';
   d[a,b]:='..';
   textcolor(WHITE);
   writeln('Tentez encore ...');
   delay(1700);
   clrscr;
   textcolor(CYAN);
   afficher(d,4,6);
   textcolor(WHITE);
   write( ' ( Votre Score est de  ' ,p,'  PTS )') ;
     writeln;
     writeln;
   writeln('Inserez l''emplacement de la premiere carte a devoiler  :');

   d[a,b]:=c[a,b];
   afficher(d,4,6);
   writeln();
   textcolor(WHITE);
   writeln('Inserez l''emplacement de la deuxiemel carte a devoiler :');
   readln(f,g);
   textcolor(CYAN);
   d[f,g]:=c[f,g];
   afficher(d,4,6);
   writeln;

      end;
                 if (d[a,b]<>d[f,g])  then
                begin
                textcolor(LIGHTRED);
                writeln('Vous n''avez pas trouve de paire. tentez encorE...');
                delay(1700);
                clrscr;
                d[a,b]:=CONCAT(chr(176),chr(176));
                d[f,g]:= CONCAT(chr(176),chr(176));
                END;
if Resultat then break;
end;
until Resultat ;
end ;
end;


if joueur=1 then
IF (niveau=2) then
begin
P:=0;
Randomize;
affichercartes(c,4,4);
affichercartes(d,4,4);



W:=Random(4)+1;
Repeat
S:=Random(4)+1 until S<>W;
Repeat
t:=Random(4)+1 until (t<>S) and (t<>W);

repeat
Z:=random(4)+1 until (z<>S) and (z<>W) and (z<>t) ;
c[w,1]:=':(';
c[w,2]:=':S';
c[w,3]:='8D';
c[w,4]:=';)';

c[s,1]:=':O';
c[s,2]:=':P';
c[s,3]:='<3';
c[s,4]:=':D';

c[t,1]:='8D';
c[t,2]:=';)';
c[t,3]:=':O';
c[t,4]:=':P';

c[Z,1]:='<3';
c[Z,2]:=':S';
c[Z,3]:=':D';
c[Z,4]:=':(';

Resultat:=False;

repeat
begin
     textcolor(CYAN);
     afficher(d,4,4);
     textcolor(WHITE);
     write( '                                   ( Votre Score est de  ' ,p,'  PTS )') ;
     writeln;
     writeln;
     writeln('Inserez l''emplacement de la premiere carte a devoiler :');
     readln(a,b) ;
     d[a,b]:=c[a,b];
     textcolor(CYAN);
     afficher(d,4,4);
     writeln();
     textcolor(WHITE);
     writeln('Inserez l''emplacement de la deuxieme carte a devoiler :');
     readln(f,g);
     d[f,g]:=c[f,g];
     textcolor(CYAN);
     afficher(d,4,4);
     writeln();

               while (d[a,b]=d[f,g]) do
               begin
                    p:=p+1;

                         if (p=8) then
                    begin
                    Resultat:=True;
                      writeln(' Fin de partie ');
                      delay(2000);
                      clrscr;
                      finpartie;

                        Break;
                         Break;
                         end;

   textcolor(LIGHTGREEN);
   writeln('Bien joue !!!');
   writeln('');
   d[f,g]:='..';
   d[a,b]:='..';
   textcolor(WHITE);
   writeln('Tentez encore ...');
   delay(1700);
   clrscr;
   textcolor(CYAN);
   afficher(d,4,4);
   textcolor(WHITE);
     write( ' ( Votre Score est de  ' ,p,'  PTS )') ;
     writeln;
     writeln;
   writeln('Inserez l''emplacement de la premiere carte a devoiler  :');
   readln(a,b) ;
   textcolor(CYAN);
   d[a,b]:=c[a,b];
   afficher(d,4,4);
   writeln();
   textcolor(WHITE);
   writeln('Inserez l''emplacement de la deuxiemel carte a devoiler :');
   readln(f,g);
   textcolor(CYAN);
   d[f,g]:=c[f,g];
   afficher(d,4,4);
   writeln;

      end;
                 if (d[a,b]<>d[f,g])  then
                begin
                textcolor(LIGHTRED);
                writeln('Vous n''avez pas trouve de paire. tentez encore...');
                delay(1700);
                clrscr;
               d[a,b]:=CONCAT(chr(176),chr(176));
               d[f,g]:= CONCAT(chr(176),chr(176));
               END;
if Resultat then break;
end;
until Resultat ;
end ;


if joueur =1then
begin
if niveau=1 then
begin
P:=0;

Randomize;
affichercartes(c,3,4);
affichercartes(d,3,4);



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
     textcolor(CYAN);
     afficher(d,3,4);
     textcolor(WHITE);
     write( '                                  ( Votre Score est de  ' ,p,'  PTS )') ;
     writeln;
     writeln;
     writeln('Inserez l''emplacement de la premiere carte a devoiler :');
     readln(a,b) ;
     d[a,b]:=c[a,b];
     textcolor(CYAN);
     afficher(d,3,4);
     writeln();
     textcolor(WHITE);
     writeln('Inserez l''emplacement de la deuxieme carte a devoiler :');
     readln(f,g);
     d[f,g]:=c[f,g];
     textcolor(CYAN);
     afficher(d,3,4);
     writeln();

               while (d[a,b]=d[f,g])  do
               begin

                    p:=p+1;

                         if (p=6) then
                    begin
                    Resultat:=True;
                      writeln(' Fin de partie ');
                       delay(2000);
                      clrscr;
                      finpartie;
                        Break;
                         Break;
                         end;

   textcolor(LIGHTGREEN);
   writeln('Bien joue !!!');
   writeln('');
   d[f,g]:='..';
   d[a,b]:='..';
   textcolor(WHITE);
   writeln('Tentez encore ...');
   delay(1700);
   clrscr;
   textcolor(CYAN);
   afficher(d,3,4);
   textcolor(WHITE);
     write( ' ( Votre Score est de  ' ,p,'  PTS )') ;
     writeln;
     writeln;
   writeln('Inserez l''emplacement de la premiere carte a devoiler  :');
   readln(a,b) ;
   textcolor(CYAN);
   d[a,b]:=c[a,b];
   afficher(d,3,4);
   writeln();
   textcolor(WHITE);
   writeln('Inserez l''emplacement de la deuxiemel carte a devoiler :');
   readln(f,g);
   textcolor(CYAN);
   d[f,g]:=c[f,g];
   afficher(d,3,4);
   writeln;

      end;
                 if (d[a,b]<>d[f,g]) then
                begin
                textcolor(LIGHTRED);
                writeln('Vous n''avez pas trouve de paire. TENTEZ ENCORE ...');
                delay(1700);
                clrscr;
               d[a,b]:=CONCAT(chr(176),chr(176));
               d[f,g]:= CONCAT(chr(176),chr(176));
               END;
if Resultat then break;
end;
until Resultat ;
end;
end;











if joueur=2 then
if niveau=1 then
begin
P:=0;
q:=0;
Randomize;
affichercartes(c,3,4);
affichercartes(d,3,4);

{w:=random(3)+2;  W doit être compris entre 1 et 3}
{s:=random(2)+3;  Même chose}
{t:=random(1)+3 ; Même chose}
{Remarque:Avec  cette technique : t,s,w peuvent être égaux !!!}


W:=Random(3)+1;
Repeat
S:=Random(3)+1 until S<>W;
Repeat
t:=Random(3)+1 until (t<>S) and (t<>W);
{ Vous allez avoir 3 nombres différent : 1,2,3}

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
     textcolor(CYAN);
     afficher(d,3,4);
     textcolor(WHITE);
     write('Joueur ',l,' C''est votre tour...  ');
     if l=1 then
     write( '                                  ( Votre Score est de  ' ,q,'  PTS )')
     else
     begin
     write( '                                  ( Votre Score est de  ' ,p,'  PTS )') ;
     end;
     writeln;
     writeln;
     writeln('Inserez l''emplacement de la premiere carte a devoiler :');
     readln(a,b) ;
     d[a,b]:=c[a,b];
     textcolor(CYAN);
     afficher(d,3,4);
     writeln();
     textcolor(WHITE);
     writeln('Inserez l''emplacement de la deuxieme carte a devoiler :');
     readln(f,g);
     d[f,g]:=c[f,g];
     textcolor(CYAN);
     afficher(d,3,4);
     writeln();

               while (d[a,b]=d[f,g]) and ((a<>f) or (b<>g))  do
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
                      delay(2000);
                        clrscr;
                        finpartie;
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

   textcolor(LIGHTGREEN);
   writeln('Bien joue !!!');
   writeln('');
   d[f,g]:='..';
   d[a,b]:='..';
   textcolor(WHITE);
   writeln('Tentez encore ...');
   delay(1700);
   clrscr;
   textcolor(CYAN);
   afficher(d,3,4);
   textcolor(WHITE);
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
   textcolor(CYAN);
   d[a,b]:=c[a,b];
   afficher(d,3,4);
   writeln();
   textcolor(WHITE);
   writeln('Inserez l''emplacement de la deuxiemel carte a devoiler :');
   readln(f,g);
   textcolor(CYAN);
   d[f,g]:=c[f,g];
   afficher(d,3,4);
   writeln;

      end;
                 if (d[a,b]<>d[f,g]) or ((a=f) and (b=g)) or (d[a,b]='..') and (d[f,g]='..') then
                begin
                textcolor(LIGHTRED);
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
end;
if joueur=2 then
IF (niveau=2) then
begin
P:=0;
q:=0;
Randomize;
affichercartes(c,4,4);
affichercartes(d,4,4);

{w:=random(3)+2;  W doit être compris entre 1 et 3}
{s:=random(2)+3;  Même chose}
{t:=random(1)+3 ; Même chose}
{Remarque:Avec  cette technique : t,s,w peuvent être égaux !!!}


W:=Random(4)+1;
Repeat
S:=Random(4)+1 until S<>W;
Repeat
t:=Random(4)+1 until (t<>S) and (t<>W);
{ Vous allez avoir 3 nombres différent : 1,2,3}
repeat
Z:=random(4)+1 until (z<>S) and (z<>W) and (z<>t) ;
c[w,1]:=':(';
c[w,2]:=':S';
c[w,3]:='8D';
c[w,4]:=';)';

c[s,1]:=':O';
c[s,2]:=':P';
c[s,3]:='<3';
c[s,4]:=':D';

c[t,1]:='8D';
c[t,2]:=';)';
c[t,3]:=':O';
c[t,4]:=':P';

c[Z,1]:='<3';
c[Z,2]:=':S';
c[Z,3]:=':D';
c[Z,4]:=':(';

Resultat:=False;

repeat
begin
     for l:=1 to 2 do
     begin
     textcolor(CYAN);
     afficher(d,4,4);
     textcolor(WHITE);
     write('Joueur ',l,' C''est votre tour...  ');
     if l=1 then
     write( '                                   ( Votre Score est de  ' ,q,'  PTS )')
     else
     begin
     write( '                                   ( Votre Score est de  ' ,p,'  PTS )') ;
     end;
     writeln;
     writeln;
     writeln('Inserez l''emplacement de la premiere carte a devoiler :');
     readln(a,b) ;
     d[a,b]:=c[a,b];
     textcolor(CYAN);
     afficher(d,4,4);
     writeln();
     textcolor(WHITE);
     writeln('Inserez l''emplacement de la deuxieme carte a devoiler :');
     readln(f,g);
     d[f,g]:=c[f,g];
     textcolor(CYAN);
     afficher(d,4,4);
     writeln();

               while (d[a,b]=d[f,g]) and ((a<>f) or (b<>g))   do
               begin
                    if l=1 then
                    begin
                    q:=q+1;
                    end
                    else
                    begin
                    p:=p+1;
                    end;
                         if (q>4)or (p>4) then
                    begin
                    Resultat:=True;
                     writeln(' Le gagnant c''est le joueur ',l,' ');
                      writeln(' Fin de partie ');
                        delay(2000);
                      clrscr;
                       finpartie;
                        Break;
                         Break;
                         end;

                         if (q=4) and (p=4) then
                    begin
                    Resultat:=True;
                     writeln(' Match null.');
                     readln;
                      writeln(' Fin de partie. ');
                        Break;
                         Break;
                         end;

   textcolor(LIGHTGREEN);
   writeln('Bien joue !!!');
   writeln('');
   d[f,g]:='..';
   d[a,b]:='..';
   textcolor(WHITE);
   writeln('Tentez encore ...');
   delay(1700);
   clrscr;
   textcolor(CYAN);
   afficher(d,4,4);
   textcolor(WHITE);
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
   textcolor(CYAN);
   d[a,b]:=c[a,b];
   afficher(d,4,4);
   writeln();
   textcolor(WHITE);
   writeln('Inserez l''emplacement de la deuxiemel carte a devoiler :');
   readln(f,g);
   textcolor(CYAN);
   d[f,g]:=c[f,g];
   afficher(d,4,4);
   writeln;

      end;
                 if (d[a,b]<>d[f,g]) or ((a=f) and (b=g)) or (d[a,b]='..') and (d[f,g]='..') then
                begin
                textcolor(LIGHTRED);
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
end ;
if joueur=2 then
IF (niveau=3) then
begin
P:=0;
q:=0;
Randomize;
affichercartes(c,4,6);
affichercartes(d,4,6);

{w:=random(3)+2;  W doit être compris entre 1 et 3}
{s:=random(2)+3;  Même chose}
{t:=random(1)+3 ; Même chose}
{Remarque:Avec  cette technique : t,s,w peuvent être égaux !!!}


W:=Random(4)+1;
Repeat
S:=Random(4)+1 until S<>W;
Repeat
t:=Random(4)+1 until (t<>S) and (t<>W);
{ Vous allez avoir 3 nombres différent : 1,2,3}
repeat
Z:=random(4)+1 until (z<>S) and (z<>W) and (z<>t) ;

c[w,1]:=':(';
c[w,2]:=':S';
c[w,3]:='8D';
c[w,4]:=';)';
c[w,5]:=':O';
c[w,6]:=':P';

c[t,1]:='<3';
c[t,2]:=':D';
c[t,3]:=':/';
c[t,4]:=':@';
c[t,5]:=':3';
c[t,6]:='X(';

c[Z,1]:=':(';
c[Z,2]:=':S';
c[Z,3]:='8D';
c[Z,4]:=';)';
c[z,5]:=':O';
c[z,6]:=':p';

c[s,1]:='<3';
c[s,2]:=':D';
c[s,3]:=':/';
c[s,4]:='X(';
c[s,5]:=':@';
c[s,6]:=':3';

Resultat:=False;

repeat
begin
     for l:=1 to 2 do
     begin
     textcolor(CYAN);
     afficher(d,4,6);
     textcolor(WHITE);
     write('Joueur ',l,' C''est votre tour...  ');
     if l=1 then
     write( '                                   ( Votre Score est de  ' ,q,'  PTS )')
     else
     begin
     write( '                                   ( Votre Score est de  ' ,p,'  PTS )') ;
     end;
     writeln;
     writeln;
     writeln('Inserez l''emplacement de la premiere carte a devoiler :');
     readln(a,b) ;
     d[a,b]:=c[a,b];
     textcolor(CYAN);
     afficher(d,4,6);
     writeln();
     textcolor(WHITE);
     writeln('Inserez l''emplacement de la deuxieme carte a devoiler :');
     readln(f,g);
     d[f,g]:=c[f,g];
     textcolor(CYAN);
     afficher(d,4,6);
     writeln();

               while (d[a,b]=d[f,g]) and ((a<>f) or (b<>g))   do
               begin
                    if l=1 then
                    begin
                    q:=q+1;
                    end
                    else
                    begin
                    p:=p+1;
                    end;
                         if (q>6)or (p>6) then
                    begin
                    Resultat:=True;
                     writeln(' Le gagnant c''est le joueur ',l,' ');
                      writeln(' Fin de partie ');
                        delay(2000);
                       clrscr;
                       finpartie;
                        Break;
                         Break;
                         end;

                         if (q=6) and (p=6) then
                    begin
                    Resultat:=True;
                     writeln(' Match null.');
                     readln;
                      writeln(' Fin de partie. ');
                        Break;
                         Break;
                         end;

   textcolor(LIGHTGREEN);
   writeln;
   writeln('Bien joue !!!');
   writeln('');
   d[f,g]:='..';
   d[a,b]:='..';
   textcolor(WHITE);
   writeln('Tentez encore ...');
   delay(1700);
   clrscr;
   textcolor(CYAN);
   afficher(d,4,6);
   textcolor(WHITE);
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
   textcolor(CYAN);
   d[a,b]:=c[a,b];
   afficher(d,4,6);
   writeln();
   textcolor(WHITE);
   writeln('Inserez l''emplacement de la deuxiemel carte a devoiler :');
   readln(f,g);
   textcolor(CYAN);
   d[f,g]:=c[f,g];
   afficher(d,4,6);
   writeln;

      end;
                 if (d[a,b]<>d[f,g]) or ((a=f) and (b=g)) or (d[a,b]='..') and (d[f,g]='..') then
                begin
                textcolor(LIGHTRED);
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
end ;

readln ;
end.
