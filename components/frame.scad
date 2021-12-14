module frame(width=20,height=40){
    difference(){
    
    cube([width,height,0.5],true);
    //左前
    translate([6,6,-1.5])
        cube([6,12,4]);
    //右前
    translate([-12,6,-1.5])
        cube([6,12,4]);

    //左后 
    translate([6,-18,-1.5])
        cube([6,12,4]);
    //右后
    translate([-12,-18,-1.5])
        cube([6,12,4]);
        
   
    translate([-10.5,-20.5,-1.5])
        cube([21,5,4]);
    }

}

module contrl_frame(width=20,height=40){
    difference(){
        color("gray")
        cylinder(0.5,6,6);
        translate([0,10,0])
        cube([40,20,3],center=true);
    }
    difference(){
        color("gray")
        cylinder(0.5,3,3);
        translate([0,-10,0])
        cube([40,20,3],center=true);
    }
}

module contrl_frame1(width=20,height=40){
    translate([0,-13,1])
    rotate([0,90,0])
    difference(){
        color("gray")
        cylinder(1,3,3);
        //translate([0,-10,0])
        //cube([40,20,3],center=true);
    }
}

frame();

translate([0,-15,1])
contrl_frame();

rotate([0,0,180])
translate([0,-15,0])
contrl_frame();


contrl_frame1();