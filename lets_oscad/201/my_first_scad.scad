$fn = 50;

difference() {
	cube([10, 20, 1]);
	translate([5, 10, -0.01]) {
		cylinder(r = 2.5, h = 2);
	}
}
