siner += 1;
goof = sin(siner / 7);

if (instance_exists(obj_whimsun))
{
    if (obj_whimsun.altchance == 7)
    {
        if (pause == 1)
        {
            siner = 0;
            shudderamount = shudder;
            sprite = 3442;
        }
        else
        {
            shudderamount = 0;
            sprite = 3441;
        }
        
        draw_sprite_ext(sprite, siner / 15, x + shudderamount, y + (goof * 6), 1, 1, 0, c_white, 1);
    }
    else
    {
        if (pause == 1)
        {
            siner = 0;
            shudderamount = shudder;
            sprite = 199;
        }
        else
        {
            shudderamount = 0;
            sprite = 198;
        }
        
        draw_sprite_ext(sprite, siner / 15, x + shudderamount, y + (goof * 6), 1, 1, 0, c_white, 1);
    }
}
