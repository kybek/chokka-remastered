class_name Stack

var s := []

func size () -> int:
	return s.size()

func push (element) -> void:
	s.append(element)

func top ():
	assert(size() > 0)
	return s[size() - 1]

func pop ():
	var temp = top()
	s.pop_back()
	return temp

func _init ():
	s = []