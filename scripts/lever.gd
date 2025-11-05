extends Area2D


@export var child : AnimatableBody2D=null
var speed: int=1
var flipped: bool=false



func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		$AnimatedSprite2D.play("", speed, flipped)
		child.lever(speed)
		if flipped==false:
			speed=1
			flipped=true
		elif flipped==true:
			speed=-1
			flipped=false

#@export var can_switch: bool= true
#@export var is_open: bool=false
#
#func _ready() -> void:
	#body_entered.connect(_on_body_entered)
#
#
#func play_animation(reverse: bool = false) -> void:
	#var speed: int
	#if reverse:
		#speed = -1
	#else:
		#speed = 1
	#$AnimatedSprite2D.play("", speed, reverse)
	#
#func _on_body_entered(body):
	#if body is Player and can_switch==true:
		#print("Lever activated")
		#$AnimatedSprite2D.play()
		#is_open = true
		#print("door can open now")
		#can_switch = false
	#else: if body is Player:
		#print("Lever cannot move back")
	#
