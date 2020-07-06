function weapon_shoot(_id, _weapon, _image_angle){
	switch ( _weapon ) {
		case weapons.bullet:
			var inst_shoot = weapon_shoot_0(_id, _image_angle);
			break;
	}
	
	return inst_shoot;
}

function weapon_shoot_0(_id, _image_angle){
	var inst_bullet = instance_create_layer(x, y, "Instances", obj_bullet);

	with ( inst_bullet ) {
		creator = _id;
		faction = _id.faction;
		direction = _image_angle;
	}
	return inst_bullet;
}