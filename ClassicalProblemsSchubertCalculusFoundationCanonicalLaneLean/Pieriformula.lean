import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure PieriFormulaPackage where
  partition : List Nat
  rowAddition : Nat
  schubertClassPartition : List Nat
  intersectionProduct : Prop

structure PieriFormulaEvidence (P : PieriFormulaPackage) where
  rowAdditionClosed : P.rowAddition > 0
  intersectionProductClosed : P.intersectionProduct

def PieriFormulaClosed (P : PieriFormulaPackage) : Prop :=
  P.rowAddition > 0 ∧ P.intersectionProduct

theorem pieri_formula_closed_from_evidence (P : PieriFormulaPackage) (E : PieriFormulaEvidence P) : PieriFormulaClosed P := by
  exact And.intro E.rowAdditionClosed E.intersectionProductClosed

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse