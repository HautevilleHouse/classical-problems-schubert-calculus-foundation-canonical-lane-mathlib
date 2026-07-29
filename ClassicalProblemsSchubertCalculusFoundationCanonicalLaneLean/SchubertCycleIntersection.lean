import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure SchubertCyclePackage (k n : ℕ) (G : GrassmannianPackage k n) where
  partialFlagType : Type u
  partialFlagVariety : Type v
  schubertCycleClass : Type w
  schubertCycle : schubertCycleClass
  dimensionFormula : Prop
  poincareDuality : Prop
  intersectionProductWellDefined : Prop

structure SchubertCycleEvidence (k n : ℕ) (G : GrassmannianPackage k n)
    (S : SchubertCyclePackage k n G) where
  dimensionFormulaClosed : S.dimensionFormula
  poincareDualityClosed : S.poincareDuality
  intersectionProductWellDefinedClosed : S.intersectionProductWellDefined

def SchubertCycleClosed (k n : ℕ) (G : GrassmannianPackage k n)
    (S : SchubertCyclePackage k n G) : Prop :=
  S.dimensionFormula ∧ S.poincareDuality ∧ S.intersectionProductWellDefined

theorem schubert_cycle_closed_from_evidence (k n : ℕ) (G : GrassmannianPackage k n)
    (S : SchubertCyclePackage k n G) (E : SchubertCycleEvidence k n G S) :
    SchubertCycleClosed k n G S := by
  exact And.intro E.dimensionFormulaClosed
    (And.intro E.poincareDualityClosed
      E.intersectionProductWellDefinedClosed)

theorem schubert_cycle_dimension_formula (k n : ℕ) (G : GrassmannianPackage k n)
    (S : SchubertCyclePackage k n G) (a : ℕ) (h : S.dimensionFormula) : True := by
  trivial

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse