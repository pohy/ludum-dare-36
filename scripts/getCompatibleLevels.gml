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

for (var i = 0; i < ds_list_size(availableLevels); i++) {
    var _currentLevel = availableLevels[| i];
    var currentLevelInstance = instance_create(-1000, -1000, _currentLevel);
    var compatibleIndex = findCompatibleLevelIndex(currentLevelInstance, _currentLevel.compatible_left);
    if (compatibleIndex > -1) {
        addToListInMap(compatibleLevels, 'left', _currentLevel.compatible_left[| compatibleIndex]);
    }
    compatibleIndex = findCompatibleLevelIndex(currentLevelInstance, _currentLevel.compatible_right);
    if (compatibleIndex > -1) {
        addToListInMap(compatibleLevels, 'right', _currentLevel.compatible_right[| compatibleIndex]);
    }
    with (currentLevelInstance) {
        instance_destroy();
    }
}

return compatibleLevels;

