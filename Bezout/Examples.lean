import Bezout.Basic

namespace Bezout

example : (12 : ℤ) * (-1) + 18 * 1 = Int.gcd 12 18 := by decide

example : ∃ x : ℤ, 3 * x ≡ 1 [ZMOD 7] := exists_inverse_mod (by decide)

end Bezout
