import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure GrassmannVariety (k n : ℕ) where
  ambientProjectiveSpace : Type
  subSpaces : Type
  dimension : ℕ
  incidenceConditions : Prop
  schubertCellDecomposition : Prop
  cellDecompositionWitness : schubertCellDecomposition

def GrassmannVarietyClosed (G : GrassmannVariety k n) : Prop :=
  G.schubertCellDecomposition

theorem grassmann_variety_closed (G : GrassmannVariety k n) : GrassmannVarietyClosed G :=
  G.cellDecompositionWitness

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse