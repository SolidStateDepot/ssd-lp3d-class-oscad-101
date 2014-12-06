include <Write.scad>

radius = 50;
size = 2 * radius * cos(45);
thickness = 3;
font_size = 30;
o = 0.01;

SSD_Emblem();

module SSD_Emblem() {
	union() {
		EmblemBase();
		translate([0, 0, thickness * 2 - o]) SSD();
	}
}

module EmblemBase() {
	translate([0, 0, 0]) cylinder(r = radius, h = thickness);
	translate([-size / 2, -size / 2, thickness - o]) cube([size, size, thickness]);
}

module SSD() {
	write("SSD", t = 5, h = font_size, center = true);
}