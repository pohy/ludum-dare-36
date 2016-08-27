// addToListInMap(map, key, value)
var map = argument0;
var key = argument1;
var value = argument2;

var list = map[? key];
if (list == undefined) {
    list = ds_list_create();
}
ds_list_add(list, value);
map[? key] = list;

return map;
