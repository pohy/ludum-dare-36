//grapple_getAttachPoint(srcX, srcY, destX, destY);
var srcX = argument[0];
var srcY = argument[1];
var destX = argument[2];
var destY = argument[3];
var maxLength = point_distance(srcX, srcY, destX, destY);
var grappleAngle = point_direction(srcX, srcY, destX, destY);

collision_line(srcX, srcY, lengthdir_x(len, dir), lengthdir_y(len,dir), objWall, false, true);

