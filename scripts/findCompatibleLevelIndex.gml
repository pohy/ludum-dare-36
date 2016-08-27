/**
 * current level instance
 * number
 */
var currentLevelInstance = argument0;
/**
 * available levels
 * ds_list
 */
var availableLevels = argument1;

var levelIndex = -1;

for (var i = 0; i < ds_list_size(availableLevels); i++) {
    var currentAvailableLevelInstance = instance_create(-1000, -1000, availableLevels[| i]);
    if (currentAvailableLevelInstance.object_index == currentLevelInstance.object_index) {
        levelIndex = i;
        with (currentAvailableLevelInstance) {
            instance_destroy();
        }
        break;
    }
    with (currentAvailableLevelInstance) {
        instance_destroy();
    }
}

return levelIndex;
