module wheel(t=[0,0,0],width=2,height=3){
    color("#444")
    translate(t)
     rotate([90,90,90])
     cylinder(h=3, r=5, center=true);
}
wheel([0,0,0],2,3);
