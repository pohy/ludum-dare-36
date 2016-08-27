/**
 * current tile instance
 * number
 */
var currentTileInstance = argument0;
/**
 * available tiles
 * ds_list
 */
var availableTiles = argument1;

var tileIndex = -1;

for (var i = 0; i < ds_list_size(availableTiles); i++) {
    var currentAvailableTileInstance = instance_create(-1000, -1000, availableTiles[| i]);
    if (currentAvailableTileInstance.object_index == currentTileInstance.object_index) {
        tileIndex = i;
        break;
    }
    with (currentAvailableTileInstance) {
        instance_destroy();
    }
}

return tileIndex;
