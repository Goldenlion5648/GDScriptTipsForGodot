extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
#	extreme_values()
#	lambda_example()
#	array_conditions()
#	array_filtering()
#	adjust_values()
#	random_value_testing()
	remainder_oddities()


func extreme_values():
	print(max(6, 9, 3, 234))
	print(min(6, 9, 3, 234))
	var arr = [6, 9, 3, 234]
	print(arr.max())
	print(arr.min())

func lambda_example():
	var nums = [5, 3, 8, 2]
	nums.sort()
	print(nums)
#	nums.sort_custom(func(x, y): return x > y)
#	print(nums)
	nums.sort_custom(func(x, y): return x % 2 < y % 2)
	print(nums)

func array_conditions():
	var nums = [5, 3, 8, 2]
	print(nums.any(func(x): return x > 7))
	print(nums.any(func(x): return x > 10))
	
	print(nums.all(func(x): return x > 10))
	print(nums.all(func(x): return x > 6))
	print(nums.all(func(x): return x > 1))


func array_filtering():
	var nums = [5, 3, 8, 2, 10, 12, 13]
	print(nums.filter(func(x): return x % 2 == 0))
	var nums2 = range(1, 11)
	print(nums2.filter(func(x): return x < 5))


func adjust_values():
	var n = 5.2
	print(round(n))
	print(ceil(n))
	var m = 5.8
	print(floor(n))
	
	var a = 5
#	a = lerp(a, 10, .5)
#	print(a)
	for i in range(10):
		print(lerp(a, 10, float(i) / 10))

func random_value_testing():
	for i in 10:
		print(randf_range(.1, .5))
		
	for i in 50:
		print(randi_range(1, 8))


func remainder_oddities():
#	for i in range(10):
#		prints(i, "mod", 5, i % 5)
	
#	for i in range(-5, 10):
#		prints(i, "mod", 5, i % 5)
	
	for i in range(-5, 10):
		prints(i, "mod", 5, posmod(i, 5))
