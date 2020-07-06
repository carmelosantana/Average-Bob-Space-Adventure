// stop collision if creator
if ( other == creator ) exit;
if ( other.faction == faction ) exit;

instance_destroy();

with ( other ) event_perform(ev_other, ev_user1);