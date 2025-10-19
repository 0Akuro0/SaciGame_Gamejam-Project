// Inherit the parent event
event_inherited();

var colListSize = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, enemy_father, false, true, collisionList, false);

for (var i = 0; i < colListSize; i++){
	collisionList[| i].dealDamage(damage)	
}
