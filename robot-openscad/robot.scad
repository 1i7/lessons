// туловище - сфера минус куб
difference() {
  sphere(25);
  translate([-30, -30, -60]) 
    cube(60);
}

// голова
translate([0, 13, 23+23]) // наверх
  rotate ([90, 0, 0]) // повернуть
    difference() {
      // голова - сплюснуть цилиндр
      scale ([.5, 1, 1])
        cylinder(h=26, r=23);
      // минус рот
      linear_extrude(height = 27)
        polygon([[-10,0],[15,5],[15,-5]]);
    }

// глаза
translate([8, 6, 60]) 
  rotate([0, 70, 0]) 
    scale([1, .6, 1]) 
      cylinder(h=3, r=5);
translate([8, -6, 60]) 
  rotate([0, 70, 0]) 
    scale([1, .6, 1])
      cylinder(h=3, r=5);

// лампочка
translate([0, 0, 77]) 
  sphere(5);
translate([0, 0, 65]) 
  cylinder(h=10, r=2);



// две ноги
translate([0, -10, -50]) leg();
translate([0, 10, -50]) leg();

// две руки
translate([0, -20, -45]) hand();
translate([0, 20, -45]) hand();

// нога
module leg() {
  cylinder(h=50, r=2);
  // колено 
  translate([0, 0, 25]) sphere(3);
  // ступня
  difference() {
    sphere(6);
    translate([-6, -6, -12]) 
      cube(12);
  }
}

// рука
module hand() {
  cylinder(h=45, r=2);
  // локоть
  translate([0, 0, 25]) sphere(3);
  // кисть
  translate([-2, -4, -2]) cube([4, 8, 10]);
}
