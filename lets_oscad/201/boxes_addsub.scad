//box_add();

rotate([180, 0, 0])
	box_sub();

module box_add() {
	union() {
		cube([10, 10, 2]);
		translate([0, 0, 2]) {
			cube([10, 2, 8]);
			cube([2, 10, 8]);
		}
		translate([0, 10 - 2, 2])
			cube([10, 2, 8]);
		translate([10 - 2, 0, 2])
			cube([2, 10, 8]);
/*
		translate([10, 10, 2]) {
		mirror([1, 1, 0]) {
				cube([10, 2, 6]);
				cube([2, 10, 6]);
			}
		}
*/
	}
}

module box_sub() {
	difference() {
		cube([10, 10, 10]);
		translate([2, 2, 2])
			cube([6, 6, 10]);
	}
}

