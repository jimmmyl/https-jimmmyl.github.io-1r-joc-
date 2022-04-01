extends Area2D



var velocitat := 10

var direccio = Vector2(0,0)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	rotation_degrees = 0
	position = Vector2(90,150)
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	
	if Input.is_action_pressed("mou dreta"):
		direccio+= Vector2(1,0)
		rotation_degrees = 25
	if Input.is_action_pressed("mou esquerra"):
		direccio+= Vector2(-1,0)
		rotation_degrees = -25
	if Input.is_action_pressed("puja"):
		direccio+= Vector2(0,-1)
	if Input.is_action_pressed("baixa"):
		direccio+= Vector2(0,1)
	position += direccio * velocitat * delta
	
	
func _on_personatge_area_entered(area):
	
	if area.is_in_group("Area esquerra"):
		modulate = Color(1,0,0)
	if area.is_in_group("Area dreta"):
		modulate = Color(0,1,0)
	rotation_degrees = 45
func _on_personatge_area_exited(area):
	modulate = Color(1,1,1)	
	rotation_degrees = 0

