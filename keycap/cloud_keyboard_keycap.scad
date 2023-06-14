include <../../KeyV2/includes.scad>

/* 
** A dsa row, but different.
The face is slightly larger than normal keyboards, to make pressing multiple at the same time easier (hopefully), enabling stenography easily.
Printed upside-down for a smooth surface on my printer.
*/
$stem_inner_slop = 0.05;
$stem_slop = 0.1;
dsa_row(3,0) upside_down() key(true, $dish_type="flat", $width_difference=4.5, $height_difference=4.5, $stem_throw=$stem_throw+1.1, $key_shape_type="rounded_square");
