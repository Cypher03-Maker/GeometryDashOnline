switch(group_id) {
    case 1:
    switch(os_type)
    {
        case os_windows:
        execute_shell_simple('https://www.youtube.com/c/JoseCipher03')
        break;
        
        case os_android:
        url_open('https://www.youtube.com/c/JoseCipher03')
        break;
    }
    break;
    
    case 2:
    switch(os_type)
    {
        case os_windows:
        execute_shell_simple('https://twitter.com/JoseCipher03')
        break;
        
        case os_android:
        url_open('https://twitter.com/JoseCipher03')
        break;
    }
    break;
    
    case 3:
    switch(os_type)
    {
        case os_windows:
        execute_shell_simple('https://discord.gg/5wX253yy8k')
        break;
        
        case os_android:
        url_open('https://discord.gg/5wX253yy8k')
        break;
    }
    break;
}
