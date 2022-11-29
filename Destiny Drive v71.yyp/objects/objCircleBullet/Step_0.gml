if instance_exists(circ_id) {
    circ_ang += 4
    x = circ_id.x + lengthdir_x(circ_len, circ_ang)
    y = circ_id.y + lengthdir_y(circ_len, circ_ang)
    ang = circ_ang
}

angle = circ_ang + 90

