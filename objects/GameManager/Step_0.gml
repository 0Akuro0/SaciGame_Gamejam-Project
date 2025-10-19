if(keyboard_check_pressed(vk_escape)){
    isPaused = !isPaused;
    pause();
}
if (!isPaused && !cardPause) {
    countTimer();
}

// Mostrar Cartas
if(keyboard_check_pressed(ord("E"))){
    if(!cardPause){
        cardPause = true;
        instance_deactivate_all(true)
        layer_set_visible("CardLayer", true);
    }else{
        cardPause = false;
        layer_set_visible("CardLayer", false);
        instance_activate_all();
    }
}