class_name PersonTest
extends GdUnitTestSuite
@warning_ignore('unused_parameter')
@warning_ignore('return_value_discarded')

const __source = 'res://scripts/person.gd'


func test_full_name() -> void:
	var person = load("res://scripts/person.gd").new("King", "Arthur")
	assert_str(person.full_name()).is_equal("King Arthur")
	person.free()
