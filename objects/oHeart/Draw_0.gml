if (spd != 0) {
    moveAngle = point_direction(0,0,hsp,vsp);
    prevMatrix = matrix_get(matrix_world);
    
    var stretch = 1+spd*STRETCH_FACTOR;
    var pinch = 1/stretch;
    
    moveToOrigin = matrix_build(-x,-y,0, 0,0,0, 1,1,1);
    rotateToAngle = matrix_build(0,0,0, 0,0,-moveAngle, 1,1,1);
    stretchMatrix = matrix_build(0,0,0, 0,0,0, stretch,pinch,1);
    rotateFromAngle = matrix_build(0,0,0, 0,0,moveAngle, 1,1,1);
    moveFromOrigin = matrix_build(x,y,0, 0,0,0, 1,1,1);
    
    everythingMatrix = moveToOrigin;
    everythingMatrix = matrix_multiply(everythingMatrix, rotateToAngle);
    everythingMatrix = matrix_multiply(everythingMatrix, stretchMatrix);
    everythingMatrix = matrix_multiply(everythingMatrix, rotateFromAngle);
    everythingMatrix = matrix_multiply(everythingMatrix, moveFromOrigin);
    
    matrix_set(matrix_world, everythingMatrix);
    draw_self();
    matrix_set(matrix_world, prevMatrix);
} else {
    draw_self();
}