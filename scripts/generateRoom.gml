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
 
var levelCount = 3;
// TODO: make it a grid
// var generatedLevels = ds_list_create();

random_set_seed(seed);

var sides = createSidesArray();

var previousLevel = undefined;
var sideLevels;
var currentSide;
var instance = undefined;

for(var i = 0; i < levelCount; i++) {
    var compatibleLevels = getCompatibleLevels(instance, availableLevels);
    if (instance != undefined) {
       var compatibleSides = getCompatibleSidesOfLevel(instance);
       
       var compatibleSideIndex = random(array_length_1d(compatibleSides));
       currentSide = compatibleSides[compatibleSideIndex];
       sideLevels = compatibleLevels[? currentSide];
    } else {
       sideLevels = compatibleLevels[? 'right'];
    }

    var currentLevelIndex = random(ds_list_size(sideLevels));
    currentLevel = sideLevels[| currentLevelIndex];
    if (previousLevel != undefined) {
       instance = createLevelOnSide(currentLevel, instance, currentSide);
       useLevelSide(instance, currentSide);
    } else {
       instance = instance_create(0, 0, currentLevel);
    }
    show_debug_message(string(instance) + ': ' + string((instance).x) + '; ' + string((instance.y)))
    previousLevel = currentLevel;
}
