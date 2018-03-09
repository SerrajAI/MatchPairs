program exemple;
uses
  crt, graph;
var
  // variables pour l'initialisation du mode graphique
  gd, gm: smallint;
begin
  // initialisation d'un écran graphique de 640 sur 480 pixels
  gd := vga;
  gm := vgahi;
  initgraph(gd, gm, '');
  if graphresult = grok then
  begin
    setbkcolor(white);
    cleardevice;
    delay(1000);
    setcolor(blue);
    line(0, 0, 639, 479);
    line(0, 479, 639, 0);
    delay(1000);
    setcolor(green);
    rectangle(0, 0, 639, 479);
    delay(1000);
    setcolor(blue);
    circle(640 div 2, 480 div 2, 100);
    delay(1000);
    setfillstyle(solidfill,yellow);
    floodfill(320 - 1,240,blue);
    setfillstyle(solidfill,lightblue);
    floodfill(320 + 1,240,blue);
    delay(5000);
    closegraph;
  end;
end.
