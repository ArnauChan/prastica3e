int[][] mapa = new int[3][3];
int y=0;
int x=0;

int turno = 1;

void setup() {
  size(500, 500);
}
void draw() {

  for (int y=0; y<3; y++) {
    for (int x=0; x<3; x++) {
      if (mapa[y][x]==0)fill(#959595);
      if (mapa[y][x]==1)fill(#0041FF);
      if (mapa[y][x]==2)fill(#21FF00);
      rect(x*169, y*169, 169, 169);
    }
  }
}
void mouseClicked() {
  int tempX=(int)(mouseX/169);  
  int tempY=(int)(mouseY/169);  
  println("x"+tempX+"  y"+tempY);
  if ( mapa [tempY][tempX] == 0) {
    mapa[tempY][tempX] = turno;
    turno++;
    if (turno == 3) turno = 1;
  }
}
