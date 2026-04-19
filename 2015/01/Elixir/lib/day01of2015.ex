defmodule Day01of2015 do
  @moduledoc """
  Documentation for `Day01of2015`.
  Module for solving Day 1 of Advent of Code 2015.
  """

  # Returns the instruction value for a given character.
  @spec get_instruction_value(String.t()) :: integer()
  defp get_instruction_value(instruction) do
    case instruction do
      "(" -> 1
      ")" -> -1
    end
  end

  @doc """
  Returns the floor number after following the instructions.

  ## Examples

      iex> Day01of2015.get_floor_number("(())")
      0

  """
  @spec get_floor_number(String.t()) :: integer()
  def get_floor_number(instructions) do
    instructions
    |> String.graphemes()
    |> Enum.map(&get_instruction_value/1)
    |> Enum.sum()
  end

  @doc """
  Returns the position of the first character that causes the floor to go into the basement.

  ## Examples

      iex> Day01of2015.get_first_basement_position(")")
      1

  """
  @spec get_first_basement_position(String.t()) :: integer()
  def get_first_basement_position(instructions) do
    instructions
    |> String.graphemes()
    |> Enum.map(&get_instruction_value/1)
    |> Enum.reduce_while({0, 0}, fn value, {sum, index} ->
      new_sum = sum + value
      new_index = index + 1

      if new_sum == -1 do
        {:halt, new_index}
      else
        {:cont, {new_sum, new_index}}
      end
    end)
  end
end
