import ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure GrassmannianVariety (k n : ℕ) where
  vspaceType : Type u
  grassmannianSet : Set (Submodule vspaceType (Fin n → vspaceType))
  tautologicalBundle : Type v
  schubertCellDecomposition : Prop
  dimensionFormula : ℕ

def GrassmannianClosed {k n : ℕ} (G : GrassmannianVariety k n) : Prop :=
  G.schubertCellDecomposition

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse