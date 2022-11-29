alarm[0] = 4

globalvar zipang, zipinv;
zipang = angle
zipinv = inv

var nipz = instance_create(x, y, objGorganZipperShot)

with(nipz)
{
inv = zipinv
angle = zipang + 90
}

inv = -(inv)

