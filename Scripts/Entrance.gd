extends Node2D


onready var dining_arrow = $ToDining/DiningArrow
onready var dining_sign = $ToDining/DiningLabel

func _ready():
	dining_arrow.play("default")
	dining_sign.play("default")
	dining_arrow.hide()
	dining_sign.hide()

func _on_Dining_enter():
	dining_arrow.show()
	dining_sign.show()

func _on_Dining_leave():
	dining_arrow.hide()
	dining_sign.hide()
