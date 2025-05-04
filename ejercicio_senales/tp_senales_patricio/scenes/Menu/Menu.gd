extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

func _ready():
	var red_generator = get_node("RedGenerator")
	var violet_generator = get_node("VioletGenerator")
	red_generator.connect("button_down", self.count_new_instance)
	violet_generator.connect("button_down", self.count_new_instance)
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	add_to_group("blocks")
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	pass
func count_new_instance():
	instancesCount += 1
	$CountLabel.text = str(instancesCount)
