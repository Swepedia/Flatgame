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
