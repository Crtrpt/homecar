module shaft (t=[0,0,0],h=12){
   color("silver") 
   translate(t)
   rotate([90,90,90])
   cylinder(h,r=0.2,center=true);
}
 
 shaft();