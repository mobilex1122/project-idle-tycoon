extends Polygon2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pos = position
var blockposx = 32
var blockposy = 32

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _process(delta):
	pos = get_global_mouse_position()
	#přichtávání x
	if pos.x < blockposx:
		if pos.x > blockposx-32:
			position.x = blockposx
		if pos.x < blockposx-32:
			blockposx -= 64
	if pos.x > blockposx:
		if pos.x < blockposx+32:
			position.x = blockposx
		if pos.x > 64:
			blockposx += 64
	#přichtávání y
	if pos.y < blockposy:
		if pos.y > blockposy-32:
			position.y = blockposy
		if pos.y < blockposy-32:
			blockposy -= 64
	if pos.y > blockposy:
		if pos.y < blockposy+32:
			position.y = blockposy
		if pos.y > 64:
			blockposy += 64


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

