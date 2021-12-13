use  <./components/frame.scad>;
use  <./components/wheel.scad>;
use  <./components/shaft.scad>;
use  <./components/scaffold.scad>;

translate([0,0,3])

//车架
frame(20,40);
//前驱动
wheel([-10,12,0]);
translate([-7,12,5])
scaffold();

shaft([0,12,0],24);

translate([6,12,5])
scaffold();
wheel([10,12,0]);
//后驱
wheel([-10,-12,0]);
translate([6,-12,5])
scaffold();
shaft([0,-12,0],24);
translate([-7,-12,5])
scaffold();
wheel([10,-12,0]);