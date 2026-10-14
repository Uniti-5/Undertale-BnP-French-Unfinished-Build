if (global.facechoice != 3)
    draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1);

if (global.facechoice == 3)
    draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1);

if (global.faceemotion == 0)
    face = 4028;

if (global.faceemotion == 1)
    face = 804;

if (global.faceemotion == 2)
    face = 800;

if (global.faceemotion == 3)
    face = 805;

if (global.faceemotion == 4)
    face = 797;

if (global.faceemotion == 5)
    face = 806;

if (global.faceemotion == 6)
    face = 807;

if (global.faceemotion == 7)
    face = 798;

if (global.faceemotion == 8)
    face = 803;

if (global.faceemotion == 9)
    face = 799;

if (global.faceemotion == "A")
    face = 796;

if (global.faceemotion == "B")
    face = 801;

if (global.faceemotion == "C")
    face = 2437;

if (scr_murderlv() < 7)
{
    if (global.facechoice != 3)
        draw_sprite_ext(face, face_index, x + 34, y, 2, 2, 0, c_white, 1);
}

if (global.facechoice == 0)
    sprite_index = spr_papyrusboss_body_neo;

if (global.facechoice == 1)
    sprite_index = spr_papdate;

if (global.facechoice == 2)
    sprite_index = spr_papdate_coy;

if (global.facechoice == 3)
    sprite_index = spr_papyrusboss_confuse;

if (scr_murderlv() >= 7)
    sprite_index = spr_papyrusboss_body_kneel;

face_index += face_speed;

if (instance_exists(OBJ_WRITER) && global.mnfight != 0)
{
    if (OBJ_WRITER.halt == 0)
        face_speed = 0.25;
    
    if (OBJ_WRITER.halt != 0 && global.faceemotion != 9)
    {
        face_index = 0;
        face_speed = 0;
    }
}
else
{
    face_index = 0;
    face_speed = 0;
}

if (global.faceemotion == 8)
    face_speed = 0.13;

if (global.facechoice == 3)
    image_speed = 0.13;

if (global.faceemotion == 7)
    face_speed = 0.29;
