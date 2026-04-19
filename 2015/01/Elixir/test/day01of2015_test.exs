defmodule Day01of2015Test do
  use ExUnit.Case
  doctest Day01of2015

  test "get_floor_number/1 returns the correct floor number" do
    assert Day01of2015.get_floor_number("(())") == 0
    assert Day01of2015.get_floor_number("()()") == 0
    assert Day01of2015.get_floor_number("(((") == 3
    assert Day01of2015.get_floor_number("(()(()(") == 3
    assert Day01of2015.get_floor_number("))((((((") == 4
    assert Day01of2015.get_floor_number("())") == -1
    assert Day01of2015.get_floor_number("))(") == -1
    assert Day01of2015.get_floor_number(")))") == -3
    assert Day01of2015.get_floor_number(")())())") == -3
  end

  test "get_first_basement_position/1 returns the correct position" do
    assert Day01of2015.get_first_basement_position(")") == 1
    assert Day01of2015.get_first_basement_position("()())") == 5
  end
end
