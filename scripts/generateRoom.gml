/// generateRoom(availableLevels, seed);
/**
 * Generates world from given levels
 * Two generated worlds with same seeds will be same
 */
/**
 * Available levels
 * @type ds_list
 */
var availableLevels = argument0;
/**
 * Seed
 * @type number
 */
var seed = argument1;
 
var levelCount = 5;
// TODO: make it a grid
var generatedLevels = ds_list_create();

for(var i = 0; i < levelCount; i++) {
    var previousLevel = generatedLevels[| ds_list_size(generatedLevels) - 1];
    var compatibleLevels = getCompatibleLevels(previousLevel, availableLevels);
    var compatibleLevelsRight = compatibleLevels[? 'right'];
    var compatibleLevelsRightCount = ds_list_size(compatibleLevelsRight);
    var index = random(compatibleLevelsRightCount);
    var currentLevel = compatibleLevelsRight[| index];
    if (currentLevel != undefined) {
        ds_list_add(generatedLevels, currentLevel);
        instance_create(i * currentLevel.width, 0, currentLevel);
    }
}
