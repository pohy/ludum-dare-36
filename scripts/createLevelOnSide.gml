/// createLevelOnSide(level, (adjacentLevel)Instance, side);

var level = argument0;
var adjacentLevel = argument1;
var side = argument2;

var adjX = (adjacentLevel).x;
var adjY = (adjacentLevel).y;
var adjSprSize = (adjacentLevel).tile_sprite_size;
var adjH = (adjacentLevel).height * adjSprSize;
var adjW = (adjacentLevel).width * adjSprSize;

var instanceId;

show_debug_message(side)
switch (side) {
    case 'left':
        instanceId = instance_create(adjX - adjW, adjY, level);
        break;
    case 'right':
        instanceId = instance_create(adjX + adjW, adjY, level);
        break;
    case 'top':
        instanceId = instance_create(adjX, adjY - adjH, level);
        break;
    case 'bottom':
        instanceId = instance_create(adjX, adjY + adjH, level);
        break;
}

return instanceId;
