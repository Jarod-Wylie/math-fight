extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var enemy = preload("res://Enemy.tscn")

	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_Enemy_Spawner_timeout():
	print('hoi')
	add_child(enemy.instance())
