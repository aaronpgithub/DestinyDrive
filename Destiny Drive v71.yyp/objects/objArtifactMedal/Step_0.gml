x = objArtifactBar.x + 2
y = objArtifactBar.y + 2

image_index = global.art_pos + (8 * global.artifact[global.art_pos, 0])

if global.menu != "char_select"
{
global.artifact[global.art_pos, 0] = 0
}

