package leap

const testVersion = 3

// IsLeapYear
func IsLeapYear(i int) bool {
	// Write some code here to pass the test suite.
	if i%4 != 0 {
		return false
	} else if i%400 == 0 {
		return true
	} else if i%100 == 0 {
		return false
	} else {
		return true
	}
}
