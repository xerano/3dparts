module fillet(x=10, y=10, z=10, radius=2){
    $fn=50;
    translate([radius, radius, 0]) minkowski()
    {
      cube([x-2*radius,y-2*radius,z-radius/2]);
      cylinder(r=radius,h=1);
    }
}

module idler(){
        difference() {
            union(){
                cube([62, 25, 5]);
                //translate([35-33/2, 0, 0]) fillet(33, 40, 12);
                translate([35-33/2, 0, 0]) cube([33, 40, 12]);
                
                /*
                translate([35-33/2, 0, 0]) {
                    minkowski() {
                        cube([33, 40, 12])
                        cylinder(d=2, h=1);
                    }
                }
                */
                
            }
            union(){
                translate([0, 15, 5]) rotate([0, 0, -60])cube([30, 20, 7]);
                translate([35-20/2, 25, 0]) cube([20, 15, 12]);
                translate([10, 12.5, 0]) cylinder(h=5, d=6, $fn=64);
                translate([16, 12.5, 0]) cylinder(h=10, d=6, $fn=64);
                translate([16, 12.5, 5]) cylinder(h=7, d=10, $fn=64);
                translate([10, 9.5, 0]) cube([6, 6, 5]);
                translate([35, 12.5, 0]) cylinder(h=12, d=10.1, $fn=64);
                translate([62-6, 12.5, 0]) cylinder(h=5, d=6, $fn=64);
                //translate([62-6, 12.5, 5]) cylinder(h=7, d=10, $fn=64);
                translate([18.5, 35, 6]) rotate([0, 90 , 0]) cylinder(h=40, d=5.1, $fn=64);
                
                translate([18.5, 35, 6]) rotate([0, 90 , 0]) cylinder(h=3, d=9, $fn=32);
                translate([48.5, 35, 6]) rotate([0, 90 , 0]) cylinder(h=3, d=9, $fn=6);
                
                
                
                translate([45, 0, 0]) cube([1, 9, 12]);
                translate([36, 8, 0]) cube([10, 1, 12]);
                translate([45, -1 , 5]) cube([10, 10, 7]);
                translate([55, 5 , 5]) rotate([0, 0, 70]) cube([20, 10, 7]);
                
                translate([42, 35, 6]) rotate([90, 0 , 0]) cylinder(h=40, d=3.1, $fn=64);
                translate([42, 25, 6]) rotate([90, 0 , 0]) cylinder(h=2.6, d=7, $fn=6);
                translate([42, 2.6, 6]) rotate([90, 0 , 0]) cylinder(h=2.6, d=5.8, $fn=32);
            }
        }
}

idler();

//translate([0,90,0]) mirror([0, 1, 0]) idler();

/*
difference(){
    cube([12, 12, 5]);
    translate([6,0,0]) cylinder(d=5, h=5);
}
*/

//fillet();

