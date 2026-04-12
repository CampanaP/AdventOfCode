package main

var validCharacters = map[rune]int{
	'(': 1,
	')': -1,
}

func getFloorNumber(input string) int {
	floorNumber := 0

	for _, char := range input {
		if value, exist := validCharacters[char]; exist {
			floorNumber += value
		}
	}

	return floorNumber
}

func getFirstBasementPosition(input string) int {
	firstBasementPosition := 1
	basementFloorValue := -1
	floorNumber := 0

	for index, char := range input {
		if value, exist := validCharacters[char]; exist {
			floorNumber += value
		}

		if floorNumber == basementFloorValue {
			firstBasementPosition += index
			break
		}
	}

	return firstBasementPosition
}
