extends Node2D

var speed = 50
var path : = PoolVector2Array()
var prelim = true

func _ready():
	idle()

func _process(delta):
	var y_coord = self.position.y
	scale = Vector2(y_coord / 2000, y_coord / 2000)
	speed = pow(y_coord, 2) / 1000
	
	# Calculate the movement distance for this frame
	var distance_to_walk = speed * delta
	
	# Move the player along the path until he has run out of movement or the path ends.
	while distance_to_walk > 0 and path.size() > 0:
		walk()
		var distance_to_next_point = position.distance_to(path[0])
		if distance_to_walk <= distance_to_next_point:
			# The player does not have enough movement left to get to the next point.
			position += position.direction_to(path[0]) * distance_to_walk
		else:
			# The player get to the next point
			position = path[0]
			path.remove(0)
		# Update the distance to walk
		distance_to_walk -= distance_to_next_point
	
	if path.size() == 0:
		idle()

func walk():
	$AnimatedSprite.play("walk")

func idle():
	$AnimatedSprite.play("idle")
