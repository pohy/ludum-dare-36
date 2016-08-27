/// getCompatibleLevels(currentLevel, availableLevels)
/**
 * Current level
 * @type ds_list
 */
var currentLevel = argument0
/**
 * Available levels
 * @type ds_list
 */
var availableLevels = argument1

var compatibleLevels = ds_map_create();

var sides = createSidesArray();

for (var i = 0; i < ds_list_size(availableLevels); i++) {
    var _currentLevel = undefined;
    if (currentLevel == undefined) {
        _currentLevel = availableLevels[| i];
        currentLevel = instance_create(-1000, -1000, _currentLevel);
    }
    
    for(var i = 0; i < array_length_1d(sides); i++) {
        var side = sides[i];
        var compatibleLevelsOfSide = getCompatibleLevelsForSide(currentLevel, side);
        compatibleIndex = findCompatibleLevelIndex(currentLevel, compatibleLevelsOfSide);
        if (compatibleIndex > -1) {
            addToListInMap(compatibleLevels, side, compatibleLevelsOfSide[| compatibleIndex]);
        }
    }
    if (_currentLevel != undefined) {
        with (currentLevel) {
            instance_destroy();
        }
    }
}

return compatibleLevels;

