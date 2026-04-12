package main

import "testing"

func testGetFloorNumber(t *testing.T) {
	tests := []struct {
		input    string
		expected int
	}{
		{"(())", 0},
		{"()()", 0},
		{"(((", 3},
		{"(()(()(", 3},
		{"())", -1},
		{"))(", -1},
		{")))", -3},
		{")())())", -3},
	}

	for _, test := range tests {
		result := getFloorNumber(test.input)
		if result != test.expected {
			t.Errorf("input: %s → atteso %d, ottenuto %d", test.input, test.expected, result)
		}
	}
}

func testGetFirstBasementPosition(t *testing.T) {
	tests := []struct {
		input    string
		expected int
	}{
		{")", 1},
		{"()())", 5},
	}

	for _, test := range tests {
		result := getFirstBasementPosition(test.input)
		if result != test.expected {
			t.Errorf("input: %s → atteso %d, ottenuto %d", test.input, test.expected, result)
		}
	}
}
