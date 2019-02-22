module profile_holder(){
    difference(){
        union() {
            cube([25, 60, 25]);
            
            translate([60,17,20]) rotate([-90, 0, 180]) linear_extrude(height = 5) polygon(points=[[0,0],[36,0],[36,20]]);
            
            translate([60,47,20]) rotate([-90, 0, 180]) linear_extrude(height = 5) polygon(points=[[0,0],[36,0],[36,20]]);
            
            translate([25, 30-18, 20]) cube([36, 35, 5]);
            translate([47, 29.5, 15]) cylinder(d=25, h=10, $fn=64);
        }
        union(){
         
          cube([20, 60, 20]);
          translate([47, 29.5, 15]) {
            translate([0, 0, 5]) cylinder(d=8, h=5, $fn=64);
            cylinder(d=14.8, h=5, $fn=6);
          }
          translate([10,7.5,20]) rotate([0,0,-90]) hole();
          translate([20,6,10]) rotate([90,90,90]) cylinder(d=5, h=5, $fn=64);
          translate([10,52.5,20]) rotate([0,0,90]) hole();
          translate([20,53,10]) rotate([90,90,90]) cylinder(d=5, h=5, $fn=64);
        }
        
    }
}

module hole(){
    hull(){
        $fn=32;
        cylinder(d=5, h=5);
        translate([5,-2.5,0])cube([5,5,5]);
    }
}

//nut_holda();
profile_holder();
//hole();

