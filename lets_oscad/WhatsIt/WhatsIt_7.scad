radius = 50;
size = 2 * radius * cos(45);
thickness = 3;

WhatsIt();

module WhatsIt() {
	translate([0, 0, 0]) cylinder(r = 50, h = thickness);
	translate([-size / 2, -size / 2, thickness]) cube([70, 70, thickness]);
}
