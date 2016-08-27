/// useLevelSide(levelInstance, side)

var level = argument0;
var side = argument1;

switch (side) {
   case 'left':
        level.right = true;
        break;
   case 'right':
        level.left = true;
        break;
   case 'top':
        level.bottom = true;
        break;
   case 'bottom':
        level.top = true;
        break;
}
