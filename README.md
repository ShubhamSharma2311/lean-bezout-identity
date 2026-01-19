# Bézout's Identity

The gcd of two integers is an integer linear combination of them, and its consequences.

Formalised in Lean 4 with Mathlib. No `sorry`.

## Proof outline

1. The extended Euclidean coefficients `gcdA`, `gcdB` witness `gcd a b = a·x + b·y`.
2. Any common divisor of `a` and `b` divides every `a·x + b·y`.
3. So `gcd a b = 1` iff `1 = a·x + b·y` for some `x, y`.
4. Reading `a·x + n·y = 1` mod `n` gives a modular inverse of `a`.

## Contents

- [`Bezout/Basic.lean`](Bezout/Basic.lean): the main development
- [`Bezout/Examples.lean`](Bezout/Examples.lean): small worked examples

Declarations:

- `Bezout.bezout`
- `Bezout.dvd_linear_combination`
- `Bezout.gcd_eq_one_iff`
- `Bezout.exists_inverse_mod`

## Build

```
lake exe cache get
lake build
```

Toolchain: `leanprover/lean4:v4.33.0-rc1`.
