use  <./components/frame.scad>;
use  <./components/wheel.scad>;
use  <./components/shaft.scad>;

translate([0,0,4])

//车架
frame(20,40);
//前驱动
wheel([-10,12,0]);
shaft([0,12,0],24);
wheel([10,12,0]);
//后驱
wheel([-10,-12,0]);
shaft([0,-12,0],24);
wheel([10,-12,0]);