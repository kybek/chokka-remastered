extends Node

class_name Genes

var color := [0, 0, 0] setget set_color, get_color
var size := 1 setget set_size, get_size
var polen_count := 1 setget set_polen_count, get_polen_count
var seed_count := 2 setget set_seed_count, get_seed_count

func set_color (new_color : Array) -> void:
   color = new_color


func get_color () -> Array:
   return color


func set_size (new_size : int) -> void:
   size = new_size


func get_size () -> int:
   return size


func set_polen_count (new_polen_count : int) -> void:
   polen_count = new_polen_count


func get_polen_count () -> int:
   return polen_count


func set_seed_count (new_seed_count : int) -> void:
   seed_count = new_seed_count


func get_seed_count () -> int:
   return seed_count
