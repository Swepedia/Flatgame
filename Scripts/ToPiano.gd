extends Area2D

func _ready():
	connect("mouse_entered", get_parent(), "_on_Piano_enter")
	connect("mouse_exited", get_parent(), "_on_Piano_leave")
