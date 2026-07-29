import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure SchubertVarietyPackage where
  flagVariety : Type u
  flagsDimension : Nat
  schubertCellDecomposition : Prop
  schubertClass : Prop
  incidenceConditions : Prop

structure SchubertVarietyEvidence (S : SchubertVarietyPackage) where
  flagsDimensionClosed : S.flagsDimension = 3
  schubertCellDecompositionClosed : S.schubertCellDecomposition
  schubertClassClosed : S.schubertClass
  incidenceConditionsClosed : S.incidenceConditions

def SchubertVarietyClosed (S : SchubertVarietyPackage) : Prop :=
  S.flagsDimension = 3 ∧ S.schubertCellDecomposition ∧ S.schubertClass ∧ S.incidenceConditions

theorem schubert_variety_closed_from_evidence (S : SchubertVarietyPackage) (E : SchubertVarietyEvidence S) : SchubertVarietyClosed S := by
  exact And.intro E.flagsDimensionClosed (And.intro E.schubertCellDecompositionClosed (And.intro E.schubertClassClosed E.incidenceConditionsClosed))

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse