draw_self();

draw_sprite(sprArtifactCharacters, 0 + (10 * global.artifact[global.art_pos, 1]), x + 78, (y + sprite_height / 2) - 10)
draw_sprite(sprArtifactCharacters, 1 + (10 * global.artifact[global.art_pos, 2]), x + 106, (y + sprite_height / 2) - 10)
draw_sprite(sprArtifactCharacters, 2 + (10 * global.artifact[global.art_pos, 3]), x + 136, (y + sprite_height / 2) - 10)
draw_sprite(sprArtifactCharacters, 3 + (10 * global.artifact[global.art_pos, 4]), x + 162, (y + sprite_height / 2) - 10)
draw_sprite(sprArtifactCharacters, 4 + (10 * global.artifact[global.art_pos, 5]), x + 190, (y + sprite_height / 2) - 10)

draw_sprite(sprArtifactCharacters, 5 + (10 * global.artifact[global.art_pos, 6]), x + 78, (y + sprite_height / 2) + 10)
draw_sprite(sprArtifactCharacters, 6 + (10 * global.artifact[global.art_pos, 7]), x + 106, (y + sprite_height / 2) + 10)
draw_sprite(sprArtifactCharacters, 7 + (10 * global.artifact[global.art_pos, 8]), x + 136, (y + sprite_height / 2) + 10)
draw_sprite(sprArtifactCharacters, 8 + (10 * global.artifact[global.art_pos, 9]), x + 162, (y + sprite_height / 2) + 10)
draw_sprite(sprArtifactCharacters, 9 + (10 * global.artifact[global.art_pos, 9]), x + 190, (y + sprite_height / 2) + 10)

draw_set_halign(fa_left)
switch(global.art_pos)
{
//Pacifist
case 0:
draw_text_transformed_colour(room_width / 2, y + 1, string_hash_to_newline("WILL BE REPLACED BY NEW ARTIFACT, THIS ONE DOES NOT WORK!!!"), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
break;

//Kamikaze
case 1:
draw_text_transformed_colour(room_width / 2, y + 1, string_hash_to_newline("KAMIKAZE: Every enemy leaves a corpse."), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
break;

//Shuffler
case 2:
draw_text_transformed_colour(room_width / 2, y + 1, string_hash_to_newline("SHUFFLER: Randomize items on the ground for 20 coins."), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
break;

//Equality
case 3:
draw_text_transformed_colour(room_width / 2, y + 1, string_hash_to_newline("EQUALITY: Everything in the game does 5 damage."), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
break;

//Underdog
case 4:
draw_text_transformed_colour(room_width / 2, y + 1, string_hash_to_newline("UNDERDOG: Your bullets are slower, enemy bullets are faster."), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
break;

//Transform
case 5:
draw_text_transformed_colour(room_width / 2, y + 1, string_hash_to_newline("TRANSFORM: Random gun each wave."), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
break;

//Invert
case 6:
draw_text_transformed_colour(room_width / 2, y + 1, string_hash_to_newline("INVERT: Your character mirrors mouse movement."), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
break;

//Ambush
case 7:
draw_text_transformed_colour(room_width / 2, y + 1, string_hash_to_newline("AMBUSH: The shop is replaced with a miniboss."), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1)
break;
}
draw_set_halign(fa_center)

