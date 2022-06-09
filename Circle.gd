extends Area2D



## quando errar colocar algum som



var flagNewPosition = false
var contPoints = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_q") or Input.is_action_just_pressed("ui_w"):
		if flagNewPosition:
			contPoints += 1
			self.scale.x -= 0.002
			self.scale.y -= 0.002
			randomize()
			position.x = rand_range(10, 600)
			position.y = rand_range(10, 600)
		else:
			contPoints = 0
			self.scale.x = 0.3
			self.scale.y = 0.3
			$"bit-error".play()


func _on_Area2D_ready():
	randomize()
	position.x = rand_range(10, 600)
	position.y = rand_range(10, 600)


func _on_Area2D_mouse_entered():
	flagNewPosition = true


func _on_Area2D_mouse_exited():
	flagNewPosition = false
