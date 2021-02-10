extends RigidBody2D

export var min_speed = 150 # min speed range
export var max_speed = 250 # max speed range


# Called when the node enters the scene tree for the first time.
func _ready():
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	# need to use randomize() if you want to be random every time run scene
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]

func _on_VisibilityNotifier2d_screen_exited():
	queue_free()
