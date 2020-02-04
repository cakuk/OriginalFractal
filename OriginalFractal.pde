public void setup() {
	size(500, 500);
	rectMode(CENTER);
} 
public void draw() {
	background(200, 200, 200, 10);
	stroke(255);
	//noStroke();
	myFractal(250, 250, 200);
}
public void myFractal(int x, int y, double size1) {
	fill((int)(Math.random() * 50) + 180 , (int)(Math.random() * 50) + 180, 255, 50);
	triangle(x, y - (int)size1, x - (int)size1, y + (int)size1, x + (int)size1, y + (int)size1);
	triangle(x, y + (int)size1, x + (int)size1, y - (int)size1, x - (int)size1, y - (int)size1);
	triangle(x + (int)size1, y, x - (int)size1, y - (int)size1, x - (int)size1, y + (int)size1);
	triangle(x - (int)size1, y, x + (int)size1, y + (int)size1, x + (int)size1, y - (int)size1);

	if(size1 > 10) {
		myFractal(x + (int)(Math.random() * 3) - 1, y + (int)(Math.random() * 3) - 1, size1 - 15);
	}
}