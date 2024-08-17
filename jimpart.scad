bigh=2; //Bottom Big ring height
bigr=15; //Bottom Big ring radius
bottomr=7; // Bottom opening on big radius
bottomh=12; // Bottom opening height(depth?) of hole from bottom
topr=10; // Top cylinder radius
toph=40; // Top cylinder height
squarew=6; // Square opening width
squareh=toph+2; // Square opening height
crossr=2; // crossing opening at bottom

difference() {
    union() {
        cylinder(h=bigh, r=bigr, center=true,$fn=200);
        translate([0,0,0])
            cylinder(h=toph+bigh,r=topr,$fn=200);
    }
    cylinder(h=bottomh*2,r=bottomr,center=true,$fn=200);
    translate([0,0,bottomh-1])
        cube([squarew, squarew,toph*2],center=true);
    translate([0,0,4])
        rotate([0,90,0])
        cylinder(h=2*(topr+2),r=crossr,center=true,$fn=200);
}
