radius=15;

difference(){
    linear_extrude(6){
        difference(){
            union(){
                translate([40,40,0])circle(15);
                difference(){
                    polygon([[0,0],[75,0],[75,5],[5,75],[0,75]]);
                    difference(){
                        square(radius);
                        translate([radius,radius,0])circle(radius);
                    }
                }
            }
            translate([40,40,0])circle(11);
            
        }
    };
    linear_extrude(1)translate([40,10])mirror([1,0,0])text(str(radius));
}
translate([40,-5,0])cube([35,5,12.5]);
translate([-5,40,0])cube([5,35,12.5]);