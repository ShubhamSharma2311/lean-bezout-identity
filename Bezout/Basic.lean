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

/-- `a` and `b` are coprime iff `1` is a linear combination of them. -/
theorem gcd_eq_one_iff (a b : ℤ) : Int.gcd a b = 1 ↔ ∃ x y : ℤ, a * x + b * y = 1 := by
  constructor
  · intro h
    obtain ⟨x, y, hxy⟩ := bezout a b
    exact ⟨x, y, by rw [hxy, h]; rfl⟩
  · rintro ⟨x, y, hxy⟩
    have h1 : ((Int.gcd a b : ℕ) : ℤ) ∣ 1 :=
      hxy ▸ dvd_linear_combination (Int.gcd_dvd_left a b) (Int.gcd_dvd_right a b) x y
    exact_mod_cast Int.eq_one_of_dvd_one (by positivity) h1

end Bezout
