# 2-to-1 Multiplexer Truth Table

A 2-to-1 MUX has two data inputs (`I0`, `I1`), one select input (`S`), and one output (`Y`).

### Truth Table

| S | I0 | I1 | Y |
|---|----|----|---|
| 0 | 0  | 0  | 0 |
| 0 | 0  | 1  | 0 |
| 0 | 1  | 0  | 1 |
| 0 | 1  | 1  | 1 |
| 1 | 0  | 0  | 0 |
| 1 | 0  | 1  | 1 |
| 1 | 1  | 0  | 0 |
| 1 | 1  | 1  | 1 |

### Boolean Expression

```text
Y = (~S & I0) | (S & I1)