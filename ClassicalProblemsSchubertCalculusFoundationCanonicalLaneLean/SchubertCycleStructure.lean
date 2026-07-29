import ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.GrassmannianVariety

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure SchubertCycleStructure {k n : ℕ} (G : GrassmannianVariety k n) where
  partition : List ℕ
  codimension : ℕ
  schubertCycleClass : Prop
  poincareDualityPairing : Prop
  pieriRule : Prop
  giambelliFormula : Prop

def SchubertCycleClosed {k n : ℕ} {G : GrassmannianVariety k n} (S : SchubertCycleStructure G) : Prop :=
  S.schubertCycleClass ∧ S.pieriRule ∧ S.giambelliFormula

theorem schubert_cycle_closed_from_evidence {k n : ℕ} {G : GrassmannianVariety k n} (S : SchubertCycleStructure G) (h : S.schubertCycleClass ∧ S.pieriRule ∧ S.giambelliFormula) : SchubertCycleClosed S := h

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse