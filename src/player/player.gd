extends KinematicBody2D

const MOVE_SPEED = 200

func move (move_vec : Vector2, move_speed := MOVE_SPEED):
	move_and_slide(move_vec.normalized() * move_speed)
