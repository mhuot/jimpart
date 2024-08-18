bigh=2; //Bottom Big ring height
bigr=15; //Bottom Big ring radius
bottomr=7; // Bottom opening on big radius
bottomh=12; // Bottom opening height(depth?) of hole from bottom
topr=10; // Top cylinder radius
toph=40; // Top cylinder height
squarew=6; // Square opening width
squareh=toph+2; // Square opening height
crossr=2; // crossing opening at bottom
facets=80;

difference() {
    union() {
        cylinder(h=bigh, r=bigr, $fn=facets);
        translate([0,0,bigh])
            cylinder(h=toph,r=topr,$fn=facets);
    }
    translate([0,0,-1])
        cylinder(h=1+(bottomh),r=bottomr,center=false,$fn=facets);
    translate([-(squarew/2),-(squarew/2),bottomh-1])
        cube([squarew, squarew,toph+1]);
    translate([0,0,5])
        rotate([0,90,0])
        cylinder(h=2*(topr+2),r=crossr,center=true,$fn=facets);
}
