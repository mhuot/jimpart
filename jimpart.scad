bigh=1; //Big ring height
bigr=13.5; //Big ring radius
bottomr=7; // opening on big radius
bottomh=12; // depth of hole from bottom
topr=9; // Top radius
toph=29;
squarew=6;
squareh=30;
crossr=1.5;

difference() {
    union() {
        cylinder(h=bigh, r=bigr, center=true,$fn=200);
        translate([0,0,0])
            cylinder(h=toph+bigh,r=topr,$fn=200);
    }
    cylinder(h=bottomh,r=bottomr,center=true,$fn=200);
    translate([0,0,bottomh-1])
        cube([squarew, squarew,60],center=true);
    translate([0,0,4])
        rotate([0,90,0])
        cylinder(h=2*(topr+2),r=crossr,center=true,$fn=200);
}
