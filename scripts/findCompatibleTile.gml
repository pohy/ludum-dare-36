/**
 * current tile
 * object
 */
var currentTile = argument0;
/**
 * available tiles
 * ds_list
 */
var availableTiles = argument1;

var tileIndex = -1;

for (var i = 0; i < ds_list_size(availableTiles); i++) {
    if (availableTiles[| i].object_index == currentTile.object_index) {
        tileIndex = i;
        break;
    }
}

return tileIndex;
