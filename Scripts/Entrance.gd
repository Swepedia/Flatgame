extends Node2D


onready var dining_arrow = $ToDining/DiningArrow
onready var dining_sign = $ToDining/DiningLabel

func _ready():
	dining_arrow.play("default")
	dining_sign.play("default")
	dining_arrow.hide()
	dining_sign.hide()
	$Particles2D.speed_scale = 1

func _on_Dining_enter():
	dining_arrow.show()
	dining_sign.show()

func _on_Dining_leave():
	dining_arrow.hide()
	dining_sign.hide()

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			var path = $Navigation2D.get_simple_path($Player.position, event.position)
			$Player.path = path
