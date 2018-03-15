module endstop_holder() {
    $fn =32;
    difference() {
        union() {
            cube([51, 4, 16]);
            translate([35.5, 7.5 , 0]) cylinder(d=15, h=16)
            ;
            translate([35.5, 11 , 0]) cube([16, 4, 16]);
        }
      union() {
          
          translate([35.5, 7.5 , 0]) cylinder(d=7.8, h=16);
        
          translate([35.5, 4.2 , 0]) %cube([16, 6.6, 16]);
        
          
          // Bohrungen
          translate([3, 4, 3]) rotate([90, 0, 0]) cylinder(d=3.3, h=4);
          translate([20, 4, 13]) rotate([90, 0, 0]) cylinder(d=3.3, h=4);
          translate([3, 4, 13]) rotate([90, 0, 0]) cylinder(d=3.3, h=4);
          translate([20, 4, 3]) rotate([90, 0, 0]) cylinder(d=3.3, h=4);
          
          translate([44, 16, 8]) rotate([90, 0, 0]) cylinder(d=3.3, h=16);
                        
        }
    }    
}

endstop_holder();