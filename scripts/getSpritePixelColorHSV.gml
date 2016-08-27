/// getSpritePixelColorHSV(sprite, pixelX, pixelY);
/**
 * Get color of pixel from given sprite
 *
 * @returns array of values [hue, saturation, value]
 */

var sprite = argument0;
var _x = argument1;
var _y = argument2;
 
var surface;
surface = surface_create(sprite_get_width(sprite), sprite_get_height(sprite));
surface_set_target(surface);

draw_clear(c_black);
draw_sprite(sprite, 0, 0, 0);

var color = surface_getpixel(surface, _x, _y);

surface_reset_target();
surface_free(surface);

var colors;
colors[0] = colour_get_hue(color);
colors[1] = colour_get_saturation(color);
colors[2] = colour_get_value(color);
return colors;
