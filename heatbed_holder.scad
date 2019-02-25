module heatbed_mount() {
    $fn=32;
    difference() {
        union(){
            translate([20, 0, 0]) hull(){
                cube([5, 20, 25]);
                translate([22,10,20]) cylinder(d=10, h=5);
            }
            translate([0, 0, 20]) cube([20, 20, 5]);
            
        }
    
        union(){
            translate([20+23, 10, 5]) cylinder(d=3.1, h=20);
            translate([25, 5, 0]) hull(){
                cube([5, 10, 20]);
                translate([20,5,15]) cylinder(d=5, h=5);
            };
            translate([37.5,2.5,10]) cube([10, 20, 10]);
            translate([10,10,20]) cylinder(d=5.1, h=5);
            translate([20,10,10]) rotate([0, 90, 0]) #cylinder(d=5.1, h=5);
        };
    };
}

heatbed_mount();

//translate([0, 7.5, 25]) cube([43,5,5]);