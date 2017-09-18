$fn = 30;

module bleh(){
difference(){
    
difference(){
linear_extrude(height = 2){
square(30, center = true);}
scale([1, 1.1, 1]){
translate([0, -2.6, -1]){
cylinder(r = 3, h =4);}}

}
scale([1, 1.1, 1]){
translate([0, 2.6, -1]){
cylinder(r = 3, h =4);}}

}}

module base(){
difference(){
bleh();
    translate([0, -16, -1]){
    linear_extrude(height = 4){
square(40);}
}}}

module borp(){
difference(){
 
difference(){
base();
    scale([1, 1.1, 1]){
translate([-1, 6, -1]){
cylinder(r = 3, h =4);}}
}
scale([1, 1.1, 1]){
translate([-1, -6, -1]){
cylinder(r = 3, h =4);}}
}}

module org(){
difference(){
    
    
intersection(){

scale([1.4, 1.1, 1]){
borp();}

translate([6.9, 0, -1]){
    scale([1, 1, 1]){
cylinder(r = 15, h = 4);}}

}

scale([2, 2, 2]){
translate([.1, 6, -1]){
cylinder(r = 3, h =4);}}
    
    scale([2, 2, 2]){
translate([.1, -6, -1]){
cylinder(r = 3, h =4);}}

}}

module ranf(){
scale([1.2, 1.3, 1]){
org();}}

module batrang(){
scale([1.4, .9, 1]){
difference(){
ranf();

 scale([.6, 2.3, 1]){
translate([-13.6, 0, -1]){
cylinder(r = 3, h =4);}}

}}

translate([-9.3, 0, 0]){
linear_extrude(height = 2){
square(2, center = true);}}}

module batarang(){
    
difference(){
    
batrang();
    scale([1, 1, 1]){
translate([-10.3, 0, -1]){
cylinder(r = .9, h =4);}}
}

translate([-8.7, 0, 0]){
linear_extrude(height = 2){
square(1.8, center = true);}
}





}

scale([1, 1.1, 1]){
batarang();}


    
