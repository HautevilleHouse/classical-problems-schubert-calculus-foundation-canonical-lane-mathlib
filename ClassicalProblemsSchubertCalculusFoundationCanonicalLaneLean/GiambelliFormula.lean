import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure GiambelliFormulaPackage where
  schubertClass : List Nat
  schurPolynomial : Prop
  determinantFormula : Prop
  cohomologyClass : Prop

structure GiambelliFormulaEvidence (G : GiambelliFormulaPackage) where
  schurPolynomialClosed : G.schurPolynomial
  determinantFormulaClosed : G.determinantFormula
  cohomologyClassClosed : G.cohomologyClass

def GiambelliFormulaClosed (G : GiambelliFormulaPackage) : Prop :=
  G.schurPolynomial ∧ G.determinantFormula ∧ G.cohomologyClass

theorem giambelli_formula_closed_from_evidence (G : GiambelliFormulaPackage) (E : GiambelliFormulaEvidence G) : GiambelliFormulaClosed G := by
  exact And.intro E.schurPolynomialClosed (And.intro E.determinantFormulaClosed E.cohomologyClassClosed)

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse