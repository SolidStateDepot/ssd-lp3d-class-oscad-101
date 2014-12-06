radius = 50;
size = 2 * radius * cos(45);
thickness = 3;

WhatsItCentered();

module WhatsIt() {
	cylinder(r = 50, h = 3);
	cube([70, 70, 3]);
}

module WhatsItCentered() {
	cylinder(r = 50, h = 3, center = true);
	cube([70, 70, 3 * 2], center = true);
}