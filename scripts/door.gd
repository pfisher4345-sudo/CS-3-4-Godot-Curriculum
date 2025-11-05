extends AnimatableBody2D

@export var is_open: bool=false
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

func lever(value):
	if value==1:
		$AnimatedSprite2D.frame = 1
		collision_layer = 100
		$LightOccluder2D.visible = false
	if value==-1:
		$AnimatedSprite2D.frame = 0
		collision_layer = 1
		$LightOccluder2D.visible = true


#func _on_door_open_box_body_entered(body: Node2D) -> void:
	#if body is Player:
		#if is_open==true:
			#print("door is open")
			##$AnimatedSprite2D.play()
			##is_open = false
			#$AnimatedSprite2D.frame = 1
			#collision_layer = 100
			#$LightOccluder2D.visible = false
		#else:
			#$AnimatedSprite2D.frame = 0
			#collision_layer = 1
			#$LightOccluder2D.visible = true
			#print("door already open")
