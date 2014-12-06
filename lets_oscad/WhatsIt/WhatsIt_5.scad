radius = 50;
size = 2 * radius * cos(45);
thickness = 3;

WhatsIt();
rotate([90, 0, 0]) WhatsItCentered();

module WhatsIt() {
	translate([0, 0, -thickness / 2]) cylinder(r = 50, h = thickness);
	translate([-size / 2, -size / 2, -thickness]) cube([70, 70, thickness * 2]);
}

module WhatsItCentered() {
	cylinder(r = 50, h = thickness, center = true);
	cube([70, 70, thickness * 2], center = true);
}