/**
 * current tile
 * ds_list
 */
var currentTile = argument0
/**
 * available tiles
 * ds_list
 */
var availableTiles = argument1

var compatibleTiles = ds_map_create();

for (var i = 0; i < ds_list_size(availableTiles); i++) {
    var _currentTile = availableTiles[| i];
    var currentTileInstance = instance_create(-1000, -1000, _currentTile);
    var compatibleIndex = findCompatibleTileIndex(currentTileInstance, _currentTile.compatible_left);
    if (compatibleIndex > -1) {
        addToListInMap(compatibleTiles, 'left', _currentTile.compatible_left[| compatibleIndex]);
    }
    compatibleIndex = findCompatibleTileIndex(currentTileInstance, _currentTile.compatible_right);
    if (compatibleIndex > -1) {
        addToListInMap(compatibleTiles, 'right', _currentTile.compatible_right[| compatibleIndex]);
    }
    with (currentTileInstance) {
        instance_destroy();
    }
}

return compatibleTiles;

