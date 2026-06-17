#macro SCREEN_HEIGHT 180
#macro SCREEN_WIDTH 320

global.pixelScale = 4;

window_set_size(SCREEN_WIDTH*global.pixelScale, SCREEN_HEIGHT*global.pixelScale);
surface_resize(application_surface, SCREEN_WIDTH*global.pixelScale, SCREEN_HEIGHT*global.pixelScale);

alarm[0] = 1;

room_goto(rTextTest);