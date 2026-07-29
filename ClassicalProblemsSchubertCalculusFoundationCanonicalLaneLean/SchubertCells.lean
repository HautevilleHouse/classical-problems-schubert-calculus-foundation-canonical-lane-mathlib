import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure SchubertCell (n : ℕ) (k : ℕ) where
  flagType : Type
  dimension : ℕ
  cellDefined : Prop
  schubertCondition : Prop

structure SchubertCellPackage (n : ℕ) (k : ℕ) where
  cells : List (SchubertCell n k)
  decompositionCovers : Prop
  cellsDisjoint : Prop
  closureRelations : Prop

structure SchubertCellEvidence {n k : ℕ} (P : SchubertCellPackage n k) where
  decompositionCoversClosed : P.decompositionCovers
  cellsDisjointClosed : P.cellsDisjoint
  closureRelationsClosed : P.closureRelations

def SchubertCellClosed {n k : ℕ} (P : SchubertCellPackage n k) : Prop :=
  P.decompositionCovers ∧ P.cellsDisjoint ∧ P.closureRelations

theorem schubert_cell_closed_from_evidence {n k : ℕ} (P : SchubertCellPackage n k)
    (E : SchubertCellEvidence P) : SchubertCellClosed P := by
  exact And.intro E.decompositionCoversClosed
    (And.intro E.cellsDisjointClosed E.closureRelationsClosed)

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse