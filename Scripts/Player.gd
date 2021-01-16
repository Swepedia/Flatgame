extends Node2D


signal stage_changed(position, scale)


# Called when the node enters the scene tree for the first time.
func _ready():
	idle()


func walk():
	$AnimatedSprite.play("walk")

func idle():
	$AnimatedSprite.play("idle")
