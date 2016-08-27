///getCompatibleLevelsForSide(level, side);
/**
 * Gets compatible levels for sid from given level
 *
 * @returns ds_list of compatible sides
 */
 
/**
 * Level
 * @type object
 */
var level = argument0;

/**
 * Side
 * One of following values: left, right, top, bottom
 *
 * @type string
 */
var side = argument1;

switch (side) {
   case 'left':
        return level.compatible_left; 
   case 'right':
        return level.compatible_right;
   case 'top':
        return level.compatible_top;
   case 'bottom':
        return level.compatible_bottom; 
   default:
        show_error('Invalid side given: ' + string(side) + ' (getCompatibleLevelsForSide)', true);
}

