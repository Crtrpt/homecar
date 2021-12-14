use  <./components/frame.scad>;
use  <./components/wheel.scad>;
use  <./components/shaft.scad>;
use  <./components/scaffold.scad>;
use  <./components/battery.scad>;
use  <./components/motor.scad>;
use  <./components/radar.scad>;
use  <./components/gear.scad>;

//车架
translate([0,0,3])
frame(20,40);

translate([0,-15,2.8])
contrl_frame();

rotate([0,0,0])
translate([-3,-18,3.9])
radar();

translate([-3,-18,3.2])
gear();


rotate([0,90,0])
translate([-5.2,-16,0])
motor();


color("blue")
rotate([0,90,0])
translate([-5.2,-13,0])
motor();

color("red")
rotate([0,0,0])
translate([-2,-11,3])
motor();

translate([0,-16,3])
gear();


translate([3,-18,3.2])
gear();


rotate([0,0,0])
translate([3,-18,3.9])
radar();




//电源
translate([0,3,2])
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