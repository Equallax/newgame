/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 747260E6
/// @DnDArgument : "expr" "wave(40,30,2,0)"
/// @DnDArgument : "var" "hp_bar_height"
hp_bar_height = wave(40,30,2,0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 35BD9322
/// @DnDArgument : "expr" "+1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "steps_passed"
steps_passed += +1;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2DDCC85F
/// @DnDArgument : "value" "steps_passed mod 60"
var temp = steps_passed mod 60;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5DF43878
/// @DnDArgument : "var" "temp"
if(temp == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F86256F
	/// @DnDParent : 5DF43878
	/// @DnDArgument : "var" "time_remaining"
	/// @DnDArgument : "not" "1"
	if(!(time_remaining == 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6300CDCA
		/// @DnDParent : 6F86256F
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "time_remaining"
		time_remaining += -1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5F063CB7
	/// @DnDParent : 5DF43878
	else
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 757F219A
		/// @DnDParent : 5F063CB7
		/// @DnDArgument : "obj" "obj_boss_1"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "e1f6e304-331a-46ef-a17b-98b24e2121d3"
		var l757F219A_0 = false;
		l757F219A_0 = instance_exists(obj_boss_1);
		if(!l757F219A_0)
		{
			/// @DnDAction : YoYo Games.Instances.Call_User_Event
			/// @DnDVersion : 1
			/// @DnDHash : 242C45BA
			/// @DnDParent : 757F219A
			event_user(0);
		}
	}
}