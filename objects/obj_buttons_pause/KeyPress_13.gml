/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0185524E
/// @DnDArgument : "var" "image_index"
if(image_index == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21BC97B1
	/// @DnDApplyTo : 76edb073-3f60-4ac4-a6c7-311688c0c073
	/// @DnDParent : 0185524E
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "pause"
	with(obj_pause) {
	pause = false;
	
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7CF95F33
/// @DnDArgument : "var" "image_index"
/// @DnDArgument : "value" "1"
if(image_index == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0185E38F
	/// @DnDApplyTo : ad5c5b93-70d7-4b0b-aa05-a2c78ba0febd
	/// @DnDParent : 7CF95F33
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "show_info"
	with(obj_info) {
	show_info = true;
	
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 396348EE
else
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 104DFD0D
	/// @DnDParent : 396348EE
	/// @DnDArgument : "room" "main_menu"
	/// @DnDSaveInfo : "room" "393c4210-a7a0-4202-a13c-2f17a04364ec"
	room_goto(main_menu);
}