myvar = 5 + 4;
myarr = [6 + 6, 5 + 15, 5 * 32 * 1.098234 / PI, 23];

box2(myarr[0], myarr[1]);
//translate([10, 0, 0])
//	box2(myarr[1], myarr[2]);
//translate([30, 0, 0])
//	box2(myarr[2], myarr[0]);

//spheres();

module box1() {
	echo(myarr[2]);
	cube(myvar, center = true);
}

module box2(w, h) {
	echo(w);
	echo(h);
	translate([-w / 2, -h / 2, -myvar / 2]) {
		//cube(w, h, myvar, center = false);
		//cube([w, h, myvar], center = false);
		cube([w, w, w], center = false);
	}
}

module cylinder(r1, r2, h) {
}

module spheres() {
	for (i = [10, 15])
	{
		assign (angle = i*360/20, distance = i*10, r = i*2)
	    {
			rotate(angle, [1, 0, 0])
			translate([0, distance, 0])
			sphere(r = r);
		}
	}
}