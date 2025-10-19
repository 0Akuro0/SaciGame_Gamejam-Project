// adiciona propriedades da carta para players
show_debug_message("Button released")


with(GameManager){

cardPause = false;
layer_set_visible("CardLayer", false);
instance_activate_all();

}

with(player){
    movespeed += 20
    damageReduction += 0.2
}