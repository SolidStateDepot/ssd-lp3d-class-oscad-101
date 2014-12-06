include <Write.scad>

radius = 50;
size = 2 * radius * cos(45);
thickness = 3;
o = 0.01;

WhatsIt();
translate([0, 0, thickness * 2 - o]) SSD();

module WhatsIt() {
	translate([0, 0, 0]) cylinder(r = 50, h = thickness);
	translate([-size / 2, -size / 2, thickness - o]) cube([70, 70, thickness]);
}

module SSD() {
	write("SSD", t = 5, h = 36, center = true);
}