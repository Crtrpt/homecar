use  <./components/frame.scad>;
use  <./components/wheel.scad>;
use  <./components/shaft.scad>;
use  <./components/scaffold.scad>;
use <./components/battery.scad>
use <./components/motor.scad>


translate([0,0,3])

//车架
frame(20,40);

translate([0,0,2])
battery();

//前驱动
wheel([-10,12,0]);
    //脚手架
    translate([-7,12,5])
    scaffold();
        //轴承
        shaft([0,12,0],24);
    //脚手架
    translate([6,12,5])
    scaffold();
wheel([10,12,0]);
//后驱
wheel([-10,-12,0]);
     //脚手架
    translate([6,-12,5])
    scaffold();
        //轴承
        shaft([0,-12,0],24);
     //脚手架
    translate([-7,-12,5])
    scaffold();
wheel([10,-12,0]);