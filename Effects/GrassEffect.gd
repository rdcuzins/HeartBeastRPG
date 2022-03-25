# NOTE: This could be inside the grass scene itself for better optimization

extends Node2D

onready var animatedSprite = $AnimatedSprite

func _ready():
	print("Should be loaded")
	animatedSprite.frame = 0
	animatedSprite.play("Animate")


func _on_AnimatedSprite_animation_finished():
	queue_free()
