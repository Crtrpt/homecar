module scaffold(h=12){
   color("green") 
    
   difference(){
       translate([0,-2,0])
       rotate([90,90,90])
       cube([6,4,1]);  
       
       for (a =[-h/2:5]){
          translate([-1,0,a*2+1])
          rotate([90,90,90])
          cylinder(2,0.2,0.2);
       }
      
   }
}


scaffold();