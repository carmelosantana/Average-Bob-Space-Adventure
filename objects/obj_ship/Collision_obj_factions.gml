/// @description Collisions

// prevents friendly fire
if ( other.faction == faction ) exit;

// self
event_perform(ev_other, ev_user1);

// collided with
with ( other ) event_perform(ev_other, ev_user1);