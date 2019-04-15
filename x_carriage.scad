module bearing_trap(outer=17, width=50){
    hull(){
        cylinder(d=outer, h=width);
        translate([-outer/2, 4, 0]) cube([outer, 5, width]);
    }
}

module x_carriage(width=45, height=64, bearing=15){
    rod_distance = 45;
    rod_offset = (height-rod_distance) / 2;
    difference() {
        union() {
            translate([0, 6, 0]) cube([width, 5, height]);
            translate([0, 0, rod_offset]) rotate([0, 90, 0]) bearing_trap(outer=bearing+4, width=width);
            translate([0, 0, height - rod_offset]) rotate([0, 90, 0]) bearing_trap(outer=bearing+4, width=width);
        }
        union() {
            translate([0, 0, height - rod_offset]) rotate([0, 90, 0]) cylinder(d=bearing, h=width);
            translate([0, 0, rod_offset]) rotate([0, 90, 0]) cylinder(d=bearing, h=width);
            translate([0, -10, 0]) cube([width, 5, 70]);
        }
    }
}
//bearing_trap();
x_carriage();