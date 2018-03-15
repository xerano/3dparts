height = 18;
diameter = 10.5;

module y_bracket() {
    
    difference() {
            union() {
                cube([35, 25, height]);
            }
            union() {
                cube([33, 25, 2]);
                translate([0, 12.5, height - (diameter/2) - 2]) rotate([0,90,0]) cylinder(h=35, d=diameter);
                translate([0, 7.25, 0]) cube([35, diameter, height - (diameter/2) - 2]);
                
                translate([10, 4, 0]) cylinder(h=height, d=4);
                translate([10, 4, height-2]) cylinder(h=2, d=6);
                translate([10, 21, 0]) cylinder(h=height, d=4);
                translate([10, 21, height-2]) cylinder(h=2, d=6);
                
                translate([26, 4, 0]) cylinder(h=height, d=4);
                translate([26, 4, height-2]) cylinder(h=2, d=6);
                translate([26, 21, 0]) cylinder(h=height, d=4);
                translate([26, 21, height-2]) cylinder(h=2, d=6);
            }
    }
    
}
$fn=32;
rotate([0, 90, 0]) translate([-35, 0, 0]) y_bracket();