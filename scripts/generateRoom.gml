/**
 * available tiles
 * ds_list
 */
var availableTiles = argument0

var tileCount = 5;
// TODO: make it a grid
var generatedTiles = ds_list_create();

for(var i = 0; i < tileCount; i++) {
    var previousTile = generatedTiles[| ds_list_size(generatedTiles) - 1];
    var compatibleTiles = getCompatibleTiles(previousTile, availableTiles);
    var compatibleTilesRight = compatibleTiles[? 'right'];
    var compatibleTilesRightCount = ds_list_size(compatibleTilesRight);
    var index = random(compatibleTilesRightCount)
    var currentTile = compatibleTilesRight[| index];
    if (currentTile != undefined) {
        ds_list_add(generatedTiles, currentTile);
        show_debug_message('i: ' + string(i))
        show_debug_message(currentTile)
        instance_create(i * currentTile.width, 0, currentTile);
    }
}
