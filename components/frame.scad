module frame(width=20,height=40){
    difference(){
    
    cube([width,height,1],true);
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
    }
}
frame(20,40);