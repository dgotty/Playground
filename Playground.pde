void setup(){
	size(640,640,P3D);
	H.init(this).background(#202020).use3D(true).autoClear(true);
	smooth();

	
}
 
void draw(){
	H.drawStage();
	rect(10, 10, 100, 100);
	// saveFrame("frames/#########.tif"); if (frameCount == 900) exit();
}