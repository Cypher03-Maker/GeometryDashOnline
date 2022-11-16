/*  This Script is just to show you how to use the scripts
    
    First of all we have 3 main scripts
        - TextBox_create
        - TextBox_step
        - TextBox_draw
    with this ones you can start runing a text input.

    
    ------- Create Event -----------------------------------
    - TextBox_Create(num,x,y,InputType,DefText)
        - num   = textbox index
        - x     = X to start writing the text
        - y     = Y to start writing the text
        - InputType = 0-lettersdigits, 1-letters, 2-digits
        - DefText   = 'Placeholder' ( no plceholder = ' ')
    
    - TextBox_AllowChar(num,Enter,Space)
        - num       = textbox index
        - Enter     = allow LineJump on textbox
        - Space     = allow spaces on textbox
    
    - TextBox_Select(num,select)
        - num       = textbox index
        - select    = selected or not (Def is not selected )
        
    - TextBox_Pass(num,enable)
        - num       = textbox index
        - enable    = if it is a password textbox
        
    - TextBox_TextAlign(num,align)
        - num       = textbox index
        -align      = text align (0-left, 1-right, 2-center)
        
    - TextBox_MaxChar(num,maxchar)
        - num       = textbox index
        - maxchar   = limit the character in a string (space count to)
        
    ------ Step event -------------------------------------
    - TextBox_Step(num)
        - num   = textbox index
        
    - TextBox_Click(num,offset,minW,minH)
    
    ***** if you used a background in the text box use      **********
    ***** the same (offset,minW,minH) for the best results   *********
    
        - num       = textbox index
        - offset    = offset arround for click detection
        - minW      = min width click detection
        - minH      = min height click detection
        
 
    ------ Draw Event -------------------------------------    
    - TextBox_Draw(num)
        - num   = textbox index
        
    - TextBox_DrawBackground(num,offset,minW,minH,radio,c1,c2,ChangeColor)
        - num   = textbox index
        - offset= space between text and the edge of the background
          in all directions.
        - minWn = min width for the background (0 = no min value)
        - minH  = min height for the background (0 = no min value)
          (Exp: defining as 20, will set a margin of 10px left and 10px right of background)
        - radio = you can round the background corners (0 = no round edges)
        - c1    = Selected color (Defult Color)
        - c2    = Deselected color (if ChangeColor is enable)
        - ChangeColor   = change color when selected or not
        
        
    **************** Extra Scripts ******************         
        
    ----- Reset to ''(empty string) a textbox --------------
    - TextBox_ResetText(num)
        - num       = textbox index
    
        
    ----- Get the textbox content ------------------------
    - TextBox_GetText(num,reset)
        - num       = textbox index
        - reset     = if you like to reset the textbox after (0-no, 1-yes)
      
        
    ----- Set the textbox content ------------------------
    - TextBox_SetText(num,string)
        - num       = textbox index
        - string    = set the textbox text to the string given
        
    
    
    ------ Utility ------------------------------------=====
    - TextBox_GetX(num)        //return x of the texbox
    - TextBox_GetY(num)        //return y of the text box
    - TextBox_GetWidth(num)    //return the width of the textbox
    - TextBox_GetHeight(num)   //return the height of the textbox
    - TextBox_GetSelect(num)   //return if the textbox is selected or not
    
    
                
******************** FAQ **********************************************************
    How to change the text color ?
        - draw_set_colour(Yourcolor) - before the draw script
    
    How to change the text font ?
        - draw_set_font(font) - before the draw script
    
    TextBox_backalign
        -Dont Touch it :D
    
************************************************************************************************    
************************************************************************************************
************************************************************************************************
**********************  created by Mlab  *********************************************************
********************  WEB : www.mlab.me  *********************************************************
************************************************************************************************
************************************************************************************************


     
