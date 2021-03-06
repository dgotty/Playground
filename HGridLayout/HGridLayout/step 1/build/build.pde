HDrawablePool pool;
HColorPool colors;

void setup(){
	size(600,600);
	H.init(this).background(#202020);
	smooth();

	colors = new HColorPool(#ffffff, #f7f7f7, #ececec, #333333, #0095a8, #00616f, #ff3300, #ff6600);

	pool = new HDrawablePool(121);
	pool.autoAddToStage()
		// .add(new HShape("svg1.svg"))
		// .add(new HShape("svg2.svg"))
		// .add(new HShape("svg3.svg"))
		// .add(new HShape("svg4.svg"))
		// .add(new HShape("svg5.svg"))
		.add(new HShape("svg6.svg"))

		.layout(
			new HGridLayout()
			.startX(50)
			.startY(50)
			.spacing(50, 50)
			.cols(11)
		)

		.onCreate(
			new HCallback() {
				public void run(Object obj) {
					HShape d = (HShape) obj;
					d
						.enableStyle(false)
						.strokeJoin(ROUND)
						.strokeCap(ROUND)
						.strokeWeight(1)
						.stroke(#000000)
						.anchorAt(H.CENTER)
						.rotate((int)random(4) * 90)
					;
					d.randomColors(colors.fillOnly());
				}
			}
		)
		.requestAll()
	;

	H.drawStage();
}