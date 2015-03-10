HRect d;
HColorField colors;

void setup(){
	size(600,600);
	H.init(this).background(#202020);
	smooth();

	colors = new HColorField(width, height)
		.addPoint(0, height/2, #FF3300, 0.5) // orange
		.addPoint(width, height/2, #0095a8, 0.5) // teal
		.addPoint(width/2, 0, #ffff00, 0.3) // yellow
		.addPoint(width/2, height, #00ff00, 0.3) // green
		.fillAndStroke()
	;

	for (int i = 0; i<100; i++){
		d = new HRect();
		d
			.fill(#000000, 100)
			.stroke(#000000)
			.strokeWeight(2)
			.size( (int)random(25,125) )
			.rotate( (int)random(360) )
			.loc( (int)random(width), (int)random(height) )
			.anchorAt(H.CENTER)
		;

		colors.applyColor(d);

		H.add(d);
	}

	H.drawStage();
}
