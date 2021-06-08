
void setup() {
  size(800, 800);
  preHTree();
  background(255);
  preHTree();
  drawH(400, 400, 200);
   hTree(4, 400, 400, 200); //changing the first variable will change the degree 
                           // to which the fractal divides
}//end setup




void drawH(int x, int y, int l) {
  line(x-l, y-l, x-l, l+y);  
  line(x-l, y, l+x, y); 
  line(l+x, y-l, l+x, l+y);
}//end drawH

void hTree(int n, int x, int y, int l) {
  //base case
  if (n == 0) {
    return;
  }

  //recursive case
  drawH(x, y, l);
  hTree(n-1, x-l, y-l, l/2); //top left
  hTree(n-1, x+l, y-l, l/2); //top right
  hTree(n-1, x+l, y+l, l/2); //bottom right 
  hTree(n-1, x-l, y+l, l/2); //bottom left
}//end hTree

void preHTree() {

  //big H
  int l = width / 4; //200
  int x = width / 2; //400 
  int y = height / 2; //400
  line(x-l, y-l, x-l, l+y);  //(n,n) is point1        (n, n+400) is point2
  line(x-l, y, l+x, y); 
  line(l+x, y-l, l+x, l+y);//(n+400, n) is point3  (n+400,n+400) is point4 //stop here

  //top left
  int l1 = l/2; //100
  int x1 = x-l; //200
  int y1 = y-l; //200 
  line(x1-l1, y1-l1, x1-l1, y1+l1);   //n, n, n, n+200
  line(x1-l1, y1, l1+x1, y1);   //n, n+100, 2+200, n+100
  line(l1+x1, y1-l1, l1+x1, l1+y1);   //n+200, n, n+200, n+200

  //top right
  int l2 = l/2; //100
  int x2 = x+l; //600
  int y2 = y-l; //200
  line(x2-l2, y2-l2, x2-l2, y2+l2); 
  line(x2-l2, y2, l2+x2, y2); 
  line(x2+l2, y2-l2, x2+l2, y2+l2);

  //bottom right 
  int l3= l/2; //100 
  int x3= x+l; //600
  int y3 = y+l; //600
  line(x3-l3, y3-l3, x3-l3, y3+l3);
  line(x3-l3, y3, l3+x3, y3); 
  line(l3+x3, y3-l3, l3+x3, l3+y3);

  //bottom left
  int l4 = l/2; //100 
  int x4 = x-l; //200
  int y4 = y+l; //600
  line(x4-l4, y4-l4, x4-l4, y4+l4);
  line(x4-l4, y4, l4+x4, y4);
  line(l4+x4, y4-l4, l4+x4, l4+y4);
}//end preHTree
