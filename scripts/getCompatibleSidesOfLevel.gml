/// getCompatibleSidesOfLevel(level);

var level = argument0;

var sides;
var index = 0;

if (ds_list_size(level.compatible_left) > 0 && level.left == false) {
   sides[index] = 'left';
   index++;
}
if (ds_list_size(level.compatible_right) > 0 && level.right == false) {
   sides[index] = 'right';
   index++;
}
if (ds_list_size(level.compatible_top) > 0 && level.top == false) {
   sides[index] = 'top';
   index++;
}
if (ds_list_size(level.compatible_bottom) > 0 && level.bottom == false) {
   sides[index] = 'bottom';
   index++;
}

return sides;

