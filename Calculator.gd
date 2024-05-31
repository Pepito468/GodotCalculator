extends Control

@onready var output_text := $Output_Text

enum operation_types { PLUS, MINUS, MULTIPY, DIVIDE, POW, SQRT }

var num: float = 0.0
var buffer: float = 0.0
var operation: operation_types

func put_num_in_buffer():
	buffer = num
	num = 0

func clear_stream():
	num = 0.0

func output_number():
	output_text.text = str(num)

func _on_equals_pressed():
	match operation:
		operation_types.PLUS:
			num = buffer + num
		operation_types.MINUS:
			num = buffer - num
		operation_types.MULTIPY:
			num = buffer * num
		operation_types.DIVIDE:
			num = buffer / num
		operation_types.POW:
			num = pow(buffer, num)
		operation_types.SQRT:
			num = sqrt(buffer)
	output_number()
	buffer = num
	clear_stream()

func _on_clear_pressed():
	num = 0.0
	buffer = 0.0
	output_number()
	
func _on_numpad_0_pressed():
	num = num * 10 + 0
	output_number()
func _on_numpad_1_pressed():
	num = num * 10 + 1
	output_number()
func _on_numpad_2_pressed():
	num = num * 10 + 2
	output_number()
func _on_numpad_3_pressed():
	num = num * 10 + 3
	output_number()
func _on_numpad_4_pressed():
	num = num * 10 + 4
	output_number()
func _on_numpad_5_pressed():
	num = num * 10 + 5
	output_number()
func _on_numpad_6_pressed():
	num = num * 10 + 6
	output_number()
func _on_numpad_7_pressed():
	num = num * 10 + 7
	output_number()
func _on_numpad_8_pressed():
	num = num * 10 + 8
	output_number()
func _on_numpad_9_pressed():
	num = num * 10 + 9
	output_number()

func _on_numpad_plus_pressed():
	put_num_in_buffer()
	operation = operation_types.PLUS
	clear_stream()

func _on_numpad_minus_pressed():
	put_num_in_buffer()
	operation = operation_types.MINUS
	clear_stream()

func _on_numpad_multiply_pressed():
	put_num_in_buffer()
	operation = operation_types.MULTIPY
	clear_stream()

func _on_numpad_divide_pressed():
	put_num_in_buffer()
	operation = operation_types.DIVIDE
	clear_stream()

func _on_numpad_pow_pressed():
	put_num_in_buffer()
	operation = operation_types.POW
	clear_stream()

func _on_numpad_sqrt_pressed():
	put_num_in_buffer()
	operation = operation_types.SQRT
	clear_stream()

