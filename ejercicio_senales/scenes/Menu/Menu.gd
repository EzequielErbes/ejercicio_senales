extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias:"
# Variable para contar cantidad de instancias
var instancesCount = 0
@onready var count_label = $CountLabel
@onready var red_generator = $RedGenerator
@onready var violet_generator = $VioletGenerator

func _count_new_instance():
	instancesCount += 1
	count_label.text = str("Cantidad de instancias: ",instancesCount)

func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto

	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)

	#pass
	#var red_generator = get_node("RedGenerator")
	#var violet_generator = get_node("VioletGenerator")
	red_generator.connect("button_down",Callable(self, "_count_new_instance"))
	violet_generator.connect("button_down",Callable(self, "_count_new_instance"))
	
func delete():
	instancesCount = 0
	count_label.text = INSTANCES_TEXT + str(instancesCount)
