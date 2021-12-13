use  <./components/frame.scad>;
use  <./components/wheel.scad>;

translate([0,0,6])

//车架
frame(20,40);
//前驱动
wheel([-10,12,0]);
wheel([10,12,0]);
//后驱
wheel([-10,-12,0]);
wheel([10,-12,0]);