extends KinematicBody

export var health = 1

onready var player = get_parent().get_node('Player')
var position = null

# Called when the node enters the scene tree for the first time.
func _ready():
	self.translation.x = player.translation.x + 10
	self.translation.z = player.translation.z + 10

func _process(delta):
	move_and_slide(player.transform.origin - transform.origin).normalized()
	if health == 0:
		queue_free()


func _on_Area_area_entered(area):
	health = health - 1
	print(health)


