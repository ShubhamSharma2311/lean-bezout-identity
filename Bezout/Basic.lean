import Mathlib

/-!
# Bézout's identity

`gcd a b = a * x + b * y` for some integers `x, y`.
As consequences: `a, b` are coprime iff `1` is such a combination, and units mod `n`.
-/

namespace Bezout

/-- **Bézout's identity.** -/
theorem bezout (a b : ℤ) : ∃ x y : ℤ, a * x + b * y = Int.gcd a b :=
  ⟨Int.gcdA a b, Int.gcdB a b, (Int.gcd_eq_gcd_ab a b).symm⟩

/-- A common divisor divides every linear combination. -/
lemma dvd_linear_combination {d a b : ℤ} (ha : d ∣ a) (hb : d ∣ b) (x y : ℤ) :
    d ∣ a * x + b * y :=
  dvd_add (dvd_mul_of_dvd_left ha x) (dvd_mul_of_dvd_left hb y)

end Bezout
