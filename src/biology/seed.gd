extends Node

class_name Seed

var genes : Genes = null


func _init (dictionary : Dictionary):
	genes = Genes.new(dictionary["genes"])


func _ready ():
   name = "Seed"