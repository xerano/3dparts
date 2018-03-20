height = 16.2;
diameter = 10.5;

module y_bracket() {
    
    difference() {
            union() {
                cube([25, 25, height]);
                color("red") translate([25, 11.5, 2]) %cube([2, 2, 12]);
            }
            union() {
                cube([23, 25, 2]);
                translate([0, 12.5, height - (diameter/2) - 2]) rotate([0,90,0]) cylinder(h=35, d=diameter);
                translate([0, 7.25, 0]) cube([35, diameter, height - (diameter/2) - 2]);
                
                translate([6, 4, 0]) cylinder(h=height, d=4);
                translate([6, 4, height-2]) cylinder(h=2, d=6);
                translate([6, 21, 0]) cylinder(h=height, d=4);
                translate([6, 21, height-2]) cylinder(h=2, d=6);
                
                translate([18, 4, 0]) cylinder(h=height, d=4);
                translate([18, 4, height-2]) cylinder(h=2, d=6);
                translate([18, 21, 0]) cylinder(h=height, d=4);
                translate([18, 21, height-2]) cylinder(h=2, d=6);
            }
    }
    
}
$fn=32;
y_bracket();