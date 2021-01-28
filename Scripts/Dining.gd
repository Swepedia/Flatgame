extends Node2D

onready var lobby_arrow = $ToEntrance/LobbyArrow
onready var lobby_sign = $ToEntrance/LobbyLabel
onready var piano_arrow = $ToPiano/PianoArrow
onready var piano_sign = $ToPiano/PianoLabel

func _ready():
	lobby_arrow.play("default")
	lobby_sign.play("default")
	lobby_arrow.hide()
	lobby_sign.hide()
	
	piano_arrow.play("default")
	piano_sign.play("default")
	piano_arrow.hide()
	piano_sign.hide()

func _on_Lobby_enter():
	lobby_arrow.show()
	lobby_sign.show()

func _on_Lobby_leave():
	lobby_arrow.hide()
	lobby_sign.hide()

func _on_Piano_enter():
	piano_arrow.show()
	piano_sign.show()

func _on_Piano_leave():
	piano_arrow.hide()
	piano_sign.hide()

func _travel_Lobby(area):
	get_tree().change_scene("res://Entrance.tscn")

func _travel_Piano(area):
	get_tree()

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			var path = $Navigation2D.get_simple_path($Player.position, event.position)
			$Player.path = path
