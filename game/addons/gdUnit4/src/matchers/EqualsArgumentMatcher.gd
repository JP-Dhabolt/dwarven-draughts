class_name EqualsArgumentMatcher
extends GdUnitArgumentMatcher

var _current
var _auto_deep_check_mode


func _init(current, auto_deep_check_mode := false):
	_current = current
	_auto_deep_check_mode = auto_deep_check_mode


func is_match(value) -> bool:
	var case_sensitive_check := true
	return GdObjects.equals(_current, value, case_sensitive_check, compare_mode(value))


func compare_mode(value) -> GdObjects.COMPARE_MODE:
	if _auto_deep_check_mode and is_instance_valid(value):
		# we do deep check on all InputEvent's
		return GdObjects.COMPARE_MODE.PARAMETER_DEEP_TEST if value is InputEvent else GdObjects.COMPARE_MODE.OBJECT_REFERENCE
	return GdObjects.COMPARE_MODE.OBJECT_REFERENCE
