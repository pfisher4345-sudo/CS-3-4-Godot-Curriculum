extends Node

#@export var inventory: Array[inventory_item]

@export var open = true 
@export var customer = true
@export var barter_amount: float= 0.8
@onready var  merchant_sprite=get_node("AnimatedSprite2D")


#func _ready() -> void:
	#body_entered.connect(_on_body_entered)

#func animate_opening() -> void:
	#$AnimatedSprite2D.play()



#func _on_detection_radius_body_entered(body: Node2D) -> void:
#func on_body_entered
	#if body is Player:
		#
	#print("wanna cookie?")
	#pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		print("wanna cookie?")
		$AnimatedSprite2D.play()
		$TalkTimer.start(1)


func _on_talk_timer_timeout() -> void:
	$AnimatedSprite2D.stop()
