# 02 - Combinational Logic

## Overview

Combinational logic circuits are digital circuits whose outputs depend only on the current inputs.

Unlike sequential circuits, combinational circuits do not store previous states or require a clock signal.

## Topics Covered

- 2-to-1 Multiplexer (MUX)
- 4-to-1 Multiplexer
- Half Adder
- Full Adder
- Half Subtractor
- Full Subtractor
- Comparator
- Encoder
- Decoder

## First Design

### 2-to-1 Multiplexer

A 2-to-1 Multiplexer selects one of two input signals based on a select signal.

### Inputs

- `I0` - Input 0
- `I1` - Input 1
- `S` - Select signal

### Output

- `Y` - Selected output

### Logic

```text
S = 0  →  Y = I0
S = 1  →  Y = I1