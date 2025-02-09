# VHDL Generic Array Bounds: Synthesis Issues

This repository demonstrates a common, yet subtle, error in VHDL involving the use of generics to define array bounds.  When a generic is not properly constrained, synthesis tools may fail to infer the correct array size, leading to unexpected behavior or synthesis failures.  The `bug.vhdl` file shows the problematic code, while `bugSolution.vhdl` provides a corrected version.

## Problem
The issue arises from using an unconstrained generic to determine the size of an array.  The synthesizer might not be able to determine the array's size precisely, causing synthesis errors or incorrect results.

## Solution
The solution involves explicitly constraining the generic to a specific range of values. This ensures that the synthesizer has enough information to determine the array size correctly.

## How to Reproduce
1. Clone this repository.
2. Synthesize the code in `bug.vhdl` using your preferred VHDL synthesis tool.  Observe the errors.
3. Synthesize the code in `bugSolution.vhdl`.  It should synthesize without errors.