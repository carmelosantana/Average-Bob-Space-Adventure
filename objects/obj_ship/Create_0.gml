event_inherited();

// max lag
max_speed = 7;
max_image_angle = 5.6;
max_image_angle_lag = max_image_angle*speed;
max_image_acceleration = max_image_angle/1.3;
image_deceleration_rate = 0.05;

// current
image_angle_lag = 0;
image_acceleration = 0;

// weapons
weapon = weapons.bullet;