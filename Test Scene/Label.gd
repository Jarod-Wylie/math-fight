extends Label



var mathProblem = 'blah'
var rng = RandomNumberGenerator.new()
var num1 = null
var num2 = null
var answer = null

func _ready():
	rng.randomize()
	num1 = rng.randi_range(0, 10.0)
	num2 = rng.randi_range(0, 10.0)
	answer = num1 + num2
	mathProblem = String(num1) + ' + ' + String(num2) 
	self.set_text(mathProblem)

func get_input():
	if (Input.is_action_just_pressed("attack")):
		get_node('./Level')
		print(get_node('../../.'))
	
		
func _process(delta):
	get_input()
