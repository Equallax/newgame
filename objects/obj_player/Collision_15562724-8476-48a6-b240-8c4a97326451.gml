/// @DnDAction : YoYo Games.Instances.Change_Instance
/// @DnDVersion : 1
/// @DnDHash : 550939DD
/// @DnDApplyTo : other
/// @DnDArgument : "objind" "obj_smallexploding"
/// @DnDSaveInfo : "objind" "c1597ac4-c144-4b3c-ae1e-73d7330fee97"
with(other) instance_change(obj_smallexploding, true);

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 28AF2DB0
/// @DnDArgument : "lives" "-2"
/// @DnDArgument : "lives_relative" "1"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-2);

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 1A7C5537
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 050CE126
	/// @DnDParent : 1A7C5537
	/// @DnDArgument : "objind" "obj_player_death"
	/// @DnDSaveInfo : "objind" "804992f8-28d5-41c1-8d80-d59c85dbec7b"
	instance_change(obj_player_death, true);
}