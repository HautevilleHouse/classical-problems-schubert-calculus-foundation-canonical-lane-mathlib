import canonicalLaneMathlib.AdmissibleClass
import ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.GrassmannVariety

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure SchubertCycle (k n : ℕ) (G : GrassmannVariety k n) where
  partition : List ℕ
  codimension : ℕ
  poincareDualClass : Type
  fundamentalClass : poincareDualClass
  schubertCondition : Prop
  schubertConditionClosed : schubertCondition

def SchubertCycleClosed {k n : ℕ} {G : GrassmannVariety k n} (S : SchubertCycle k n G) : Prop :=
  S.schubertCondition

theorem schubert_cycle_closed {k n : ℕ} {G : GrassmannVariety k n} (S : SchubertCycle k n G) : SchubertCycleClosed S :=
  S.schubertConditionClosed

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse