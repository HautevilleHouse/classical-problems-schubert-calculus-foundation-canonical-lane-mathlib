import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure FlagVarietyPackage where
  completeFlagManifold : Type u
  partialFlagManifold : Type v
  projectionMap : Type w
  bruhatDecomposition : Prop
  schubertCells : Prop

structure FlagVarietyEvidence (F : FlagVarietyPackage) where
  bruhatDecompositionClosed : F.bruhatDecomposition
  schubertCellsClosed : F.schubertCells

def FlagVarietyClosed (F : FlagVarietyPackage) : Prop :=
  F.bruhatDecomposition ∧ F.schubertCells

theorem flag_variety_closed_from_evidence (F : FlagVarietyPackage) (E : FlagVarietyEvidence F) : FlagVarietyClosed F := by
  exact And.intro E.bruhatDecompositionClosed E.schubertCellsClosed

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse