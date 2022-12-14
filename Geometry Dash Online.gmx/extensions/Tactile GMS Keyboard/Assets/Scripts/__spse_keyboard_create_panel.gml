///__spse_keyboard_create_panel();
//This function is pretty straightforward too. It create the panel with the selected state:
//Must be performed by the keyboard:
//First destroy the old instances:
instance_destroy(object_keyboard_key);
with(object_keyboard){
    ///Create the keys:
    var This_key;
    var X_position;
    var Y_position;
    
    Y_position = y;
    for(i=0; i < array_height_2d(Selected_set); i+=1){
        X_position = x;
        for(j=0; j < array_length_2d(Selected_set,i); j+=1){
        
            
            This_key = instance_create(0,0,object_keyboard_key);
            This_key.Key_value = Selected_set[i,j];
            
            switch(This_key.Key_value){
                //Here you can set custom Keycaps width and use a sprite
                case "ENTER":
                    // 1.5 time the width;
                    This_key.Width =  Keycaps_width * 1.5;
                    This_key.sprite_index = sprite_key_enter;
                    break;
                    
                case "=":
                    // 1.5 time the width;
                    This_key.Width =  Keycaps_width * 1.5;
                    break;
                    
                case "DELETE":
                    //1.5 time the width;
                    This_key.Width =  Keycaps_width * 1.5;
                    This_key.sprite_index = sprite_key_delete;
                    break;
                    
                case "MAJ":
                    //1.5 time the width;
                    This_key.Width =  Keycaps_width * 1.5;
                    This_key.sprite_index = sprite_key_maj;
                    break;
                    
                case "OTHER":
                    //1.5 time the width;
                    This_key.Width =  Keycaps_width * 1.5;
                    This_key.sprite_index = sprite_key_other;
                    break;
                    
                    
                case " ": //SPACE
                    // 4 time the width:
                    This_key.Width =  Keycaps_width * 4;
                    This_key.sprite_index = sprite_key_space;
                    break;
                
                default:
                    //Default height and width;
                    This_key.Width =  Keycaps_width;
                    break;
                }
            //Progress in the row:
            This_key.x = X_position;
            X_position += This_key.Width;
            //Same height for all keys.    
            This_key.Height = Keycaps_height;
            This_key.y = Y_position;
                
            }
        //Change row:
        Y_position += Keycaps_height;
        }
        
    }
__spse_keyboard_reset_surface();
