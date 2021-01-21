extends Node2D

func _ready():
	idle()

func walk():
	$AnimatedSprite.play("walk")

func idle():
	$AnimatedSprite.play("idle")
