
carriage_width=62;

module baseplate() {
    difference() {
        union() {
            cube([80, carriage_width, 12]);
            translate([-14, 38, 0]) cube([14, 24, 12]);
            translate([30, 0, 12]) cube([20, carriage_width, 5]);
        }
        union() {
            translate([32, 0, 7]) {
                cube([3, 15, 10]);
                cube([2, 20, 10]);
            }
            translate([41, 0, 7]) {
                cube([1, 15, 10]);
            }
            translate([42, 0, 7]) {
                cube([2, 20, 10]);
            }
            translate([32, 62-15, 7]) {
                cube([3, 15, 10]);
            }
            
            translate([32, 62-20, 7]) {
                 cube([2, 20, 10]);
            }
            
             translate([41, 62-15, 7]) {
                cube([1, 15, 10]);
            }
            translate([42, 62-20, 7]) {
                cube([2, 20, 10]);
            }
             translate([42, 0, 7]) {
                cube([6, carriage_width, 10]);
            }
            translate([54, 0, 0]) cube([26, 15, 12]);
            translate([54, carriage_width-14, 0]) cube([26, 14, 12]);
            #translate([84, 0, 4]) rotate([-90, 40, 0]) cylinder(d=30, h=carriage_width, $fn=3);
            
        }
    }
}

module bushing_holes() {
    cylinder(d=19, h=carriage_width-2);
    translate([0,0,-1]) cylinder(d=15, h=62);
    translate([50, 0, (29 / 2)]) cylinder(d=19, h=30);
    translate([50, 0, 12]) cylinder(d=15, h=35);
}

$fn=32;

difference() {
    baseplate();
    union() {
        translate([15, 61, 12]) rotate([90, 0, 0]) bushing_holes();
        
        // zip ties
        translate([15, 7+2, 12]) rotate([90, 0, 0]) {
            difference() {
                    cylinder(d=24, h=4);
                    cylinder(d=21, h=4);
             }
         }
         
         translate([15, 23+2, 12]) rotate([90, 0, 0]) {
            difference() {
                    cylinder(d=24, h=4);
                    cylinder(d=21, h=4);
             }
         }
         
         translate([15, carriage_width-23+2, 12]) rotate([90, 0, 0]) {
            difference() {
                    cylinder(d=24, h=4);
                    cylinder(d=21, h=4);
             }
         }
         
         translate([15, carriage_width-7+2, 12]) rotate([90, 0, 0]) {
           difference() {
                    cylinder(d=24, h=4);
                    cylinder(d=21, h=4);
             }
         }
         
         translate([65,  24, 12]) rotate([90, 0, 0]) {
            difference() {
                    cylinder(d=24, h=4);
                    cylinder(d=21, h=4);
             }
         }
         
         translate([65, 40, 12]) rotate([90, 0, 0]) {
            difference() {
                    cylinder(d=24, h=4);
                    cylinder(d=21, h=4);
             }
         }
        // end zip ties
         
        translate([38, (carriage_width / 2) - 12, 0]) cylinder(d=3.2, h=17);
        translate([38, (carriage_width / 2) + 12, 0]) cylinder(d=3.2, h=17);
        
        translate([38, (carriage_width / 2) - 12, 13]) cylinder(d=5.5, h=4);
        translate([38, (carriage_width / 2) - 12, 7]) difference() {
                    cylinder(d=12.4, h=10);
                    cylinder(d=8, h=10);
         }
        translate([38, (carriage_width / 2) + 12, 13]) cylinder(d=5.5, h=4);
        translate([38, (carriage_width / 2) + 12, 7]) difference() {
                    cylinder(d=12.4, h=10);
                    cylinder(d=8, h=10);
         }
        translate([38-44, (carriage_width / 2)  + 12 + 7, 0]) cylinder(d=3.2, h=12);
         translate([38-44, (carriage_width / 2)  + 12 + 7, 4]) cylinder(d=5.5, h=8);
    }
}

//#translate([15, -20, 12]) rotate([-90]) cylinder(d=10, h=100);