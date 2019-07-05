$fn=64;
difference(){
    union(){
        cylinder(h=40, d=8);
        translate([0, 0, 20]) rotate([90,0,0])cylinder(h=25, d=8);
        translate([0, 0, 8]) cylinder(h=1, d=9);
        translate([0, 0, 3]) cylinder(h=1, d=9);
        translate([0, 0, 32]) cylinder(h=1, d=9);
        translate([0, 0, 37]) cylinder(h=1, d=9);
        translate([0, -17, 20]) rotate([90,0,0]) cylinder(h=1, d=9);
        translate([0, -22, 20]) rotate([90,0,0]) cylinder(h=1, d=9);
    }
    
    union(){
        cylinder(h=40, d=6);
        translate([0, 0, 20]) rotate([90,0,0])cylinder(h=25, d=6);
    }
}