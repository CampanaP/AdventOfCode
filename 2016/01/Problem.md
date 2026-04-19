# Day 1: No Time for a Taxicab

## Context

Santa's sleigh uses a very high-precision clock to guide its movements, and the clock's oscillator is regulated by stars. Unfortunately, the stars have been stolen... by the Easter Bunny. To save Christmas, Santa needs you to retrieve all *fifty stars* by December 25th.

Collect stars by solving puzzles. Two puzzles will be made available on each day in the Advent calendar; the second puzzle is unlocked when you complete the first. Each puzzle grants one star. Good luck!

---

## Part 1: Manhattan Distance to HQ

### Problem Description

You're airdropped near Easter Bunny Headquarters somewhere in a city. The instructions on the intercepted Easter Bunny Recruiting Document tell you to start at a given position facing **North**, then follow a sequence of moves.

Each move consists of:
- A turn: either **`L`** (90° left) or **`R`** (90° right)
- A number of **blocks** to walk forward

Since you can only walk on the street grid of the city ([taxicab geometry](https://en.wikipedia.org/wiki/Taxicab_geometry)), the goal is to find the **shortest path** (Manhattan distance) from the starting point to the final destination.

### Examples

- `R2, L3` → ends up 2 blocks East and 3 blocks North → **5 blocks away**
- `R2, R2, R2` → ends up 2 blocks due South → **2 blocks away**
- `R5, L5, R5, R3` → **12 blocks away**

### Task

**How many blocks away is Easter Bunny HQ?**

---

## Part 2: First Location Visited Twice

> This section will be updated once Part 1 is completed.

### Problem Description

Then, you realize something important: you actually need to find the first location you visit **twice**. Since each instruction moves you multiple blocks, you must track every intermediate intersection along the way.

### Examples

- `R8, R4, R4, R8` → the first location visited twice is **4 blocks away**

### Task

**How many blocks away is the first location you visit twice?**

---

## Solution Approach

## Implementation Notes

- **Language:** Go / Elixir
- **Solutions:** `main.go` / `script.exs`

## Resources

- [Advent of Code 2016 - Day 1](https://adventofcode.com/2016/day/1)
