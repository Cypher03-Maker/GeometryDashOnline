///keyboard_set_keycaps_radius(Radius);

//This functions sets both the x and y radius of the keycaps layer;

if instance_exists(object_keyboard){
    with(object_keyboard){
        Keycaps_xradius = real(argument0);
        Keycaps_yradius = Keycaps_xradius;
        __spse_keyboard_reset_surface();
        }
    }
