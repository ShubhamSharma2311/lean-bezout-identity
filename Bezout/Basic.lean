import Mathlib

/-!
# Bézout's identity

`gcd a b = a * x + b * y` for some integers `x, y`.
As consequences: `a, b` are coprime iff `1` is such a combination, and units mod `n`.
-/

namespace Bezout

/-- **Bézout's identity.** -/
theorem bezout (a b : ℤ) : ∃ x y : ℤ, a * x + b * y = Int.gcd a b := by
  sorry

end Bezout
