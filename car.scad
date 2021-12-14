use  <./components/frame.scad>;
use  <./components/wheel.scad>;
use  <./components/shaft.scad>;
use  <./components/scaffold.scad>;
use  <./components/battery.scad>
use  <./components/motor.scad>

//车架
translate([0,0,3])
frame(20,40);
//电源
translate([0,0,2])
battery();

//前驱动
wheel([-10,12,0]);
    //脚手架
    translate([-7,12,5])
    scaffold();
    //电机1
    translate([-4,12,0])
    motor();
        //轴承
        shaft([0,12,0],24);
    //电机2
    translate([4,12,0])
    motor();
    //脚手架
    translate([6,12,5])
    scaffold();
wheel([10,12,0]);
//后驱
wheel([-10,-12,0]);
     //脚手架
    translate([6,-12,5])
    scaffold();
    
      //电机3
    translate([-4,-12,0])
    motor();
        //轴承
        shaft([0,-12,0],24);
       //电机4
    translate([4,-12,0])
    motor();
     //脚手架
    translate([-7,-12,5])
    scaffold();
wheel([10,-12,0]);