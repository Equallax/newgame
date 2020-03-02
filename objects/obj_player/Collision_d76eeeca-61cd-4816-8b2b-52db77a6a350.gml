/// @DnDAction : YoYo Games.Instances.Change_Instance
/// @DnDVersion : 1
/// @DnDHash : 542BA0AA
/// @DnDApplyTo : other
/// @DnDArgument : "objind" "obj_smallexploding"
/// @DnDSaveInfo : "objind" "c1597ac4-c144-4b3c-ae1e-73d7330fee97"
with(other) instance_change(obj_smallexploding, true);

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 539C2507
/// @DnDArgument : "lives" "-1"
/// @DnDArgument : "lives_relative" "1"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-1);

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 60F8C1E3
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6BB3B1E3
	/// @DnDParent : 60F8C1E3
	/// @DnDArgument : "objind" "obj_player_death"
	/// @DnDSaveInfo : "objind" "804992f8-28d5-41c1-8d80-d59c85dbec7b"
	instance_change(obj_player_death, true);
}