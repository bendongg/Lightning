int x = 0;
int y = 150;
int a = 0;
int b = 150;

boolean bolt = false;

void setup() {
size(300, 300);
strokeWeight(3);
}

void draw() {
background(0);
drawCloud();

if (bolt) {
stroke(255, 234, 0);

x = 0;
y = 150;
a = 0;
b = 150;


while (a < width) {
a = x + (int)(Math.random() *10);
b = y + ((int)(Math.random() *19)-9);
b = max(0, min(height-1, b));

line(x, y, a, b);

x = a;
y = b;
}

bolt = false;
}
}

void mousePressed() {
bolt = true;
}

void drawCloud() {
noStroke();
fill(150);
ellipse(70, 60, 110, 70);
ellipse(120, 50, 130, 80);
ellipse(180, 60, 120, 75);
ellipse(230, 55, 100, 65);
stroke(255);
}
