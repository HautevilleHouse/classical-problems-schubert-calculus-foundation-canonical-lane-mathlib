import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure IntersectionTheoryPackage where
  chernClasses : Type u
  chernCharacter : Type v
  toddClass : Type w
  riemannRoch : Prop
  chernFormulas : Prop

structure IntersectionTheoryEvidence (I : IntersectionTheoryPackage) where
  riemannRochClosed : I.riemannRoch
  chernFormulasClosed : I.chernFormulas

def IntersectionTheoryClosed (I : IntersectionTheoryPackage) : Prop :=
  I.riemannRoch ∧ I.chernFormulas

theorem intersection_theory_closed_from_evidence (I : IntersectionTheoryPackage) (E : IntersectionTheoryEvidence I) : IntersectionTheoryClosed I := by
  exact And.intro E.riemannRochClosed E.chernFormulasClosed

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse