module base_plate() {
    difference() {
        union() {
            translate([1, 1, 0]) minkowski($fn=32){
                cube([43,43,4]);
                cylinder(1);
            }
            translate([4.5, 17.5, 5]) 
            minkowski() {
                cube([36, 10, 31]);
                cylinder(1);
            }
            translate([23, 16, 6]) rotate([90, 45, 0]) cylinder(r1=20, r2=2.5, h=16, $fn=4);
            translate([23, 29, 6]) rotate([90, 45, 180]) cylinder(r1=20, r2=2.5, h=16, $fn=4);
        }
        
        translate([0,0,-10]) cube([45, 45, 10]);
        
        // holes
        $fn=32;
        translate([11, 11]) cylinder(d=4.1, h=2);
        translate([34, 11]) cylinder(d=4.1, h=2);
        translate([11, 34]) cylinder(d=4.1, h=2);
        translate([34, 34]) cylinder(d=4.1, h=2);
        
        // clamp holes & nut traps
        translate([9.5, 22.5, 23]) cylinder(d=4.1, h=14);
        translate([35.5, 22.5, 23]) cylinder(d=4.1, h=14);
        
        translate([32, 16, 28]) cube([7.1, 13, 3.5]);
        translate([6, 16, 28]) cube([7.1, 13, 3.5]);
        
        // nut traps
        translate([11, 11, 2]) cylinder(d=7.75, h=18, $fn=6);
        translate([34, 11, 2]) cylinder(d=7.75, h=18, $fn=6);
        translate([11, 34, 2]) cylinder(d=7.75, h=18, $fn=6);
        translate([34, 34, 2]) cylinder(d=7.75, h=18, $fn=6);
        
        // holes for hotend
        translate([22.5, 26, 37]) rotate([90]) cylinder(d=12, h=6);
        translate([22.5, 29, 37]) rotate([90]) cylinder(d=16, h=3);
        translate([22.5, 20, 37]) rotate([90]) cylinder(d=16, h=4);
    }
}

module nut() {
    cylinder(d=7.74, h=3.3, $fn=6);
}

$fn=32;
//base_plate();
//translate([35.6, 22.5, 28]) color("green") rotate([0, 0, 30]) nut();

cylinder(r1=20, r2=20, h=10, $fn=3);