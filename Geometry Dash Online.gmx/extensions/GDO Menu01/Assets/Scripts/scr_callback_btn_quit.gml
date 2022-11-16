/// scr_callback_btn_quit

if(quitClicks == 0) {
    str_text = "Quit - But only if you really want to..##^_^";
    quitClicks++;
} else if(quitClicks == 1) {
    str_text = "Are you sure you want to quit??##...##You could stay for tea!";
    quitClicks++;
}else if(quitClicks == 2) {
    str_text = "Really??##We could do this all day long you know##Are you really sure?##:D";
    quitClicks++;
}else if(quitClicks == 3) {
    str_text = "Q!";
    quitClicks++;
} else {
    game_end();
}
