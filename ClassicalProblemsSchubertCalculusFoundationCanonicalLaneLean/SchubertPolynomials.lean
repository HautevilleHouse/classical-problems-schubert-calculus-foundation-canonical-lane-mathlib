import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure SchubertPolynomial where
  index : ℕ → ℕ
  polynomial : ℕ → ℕ ℤ
  positivityCondition : Prop
  schubertCondition : Prop

structure SchubertPolynomialPackage where
  polynomials : List SchubertPolynomial
  basisProperty : Prop
  multiplicationRule : Prop

structure SchubertPolynomialEvidence (P : SchubertPolynomialPackage) where
  basisPropertyClosed : P.basisProperty
  multiplicationRuleClosed : P.multiplicationRule

def SchubertPolynomialClosed (P : SchubertPolynomialPackage) : Prop :=
  P.basisProperty ∧ P.multiplicationRule

theorem schubert_polynomial_closed_from_evidence (P : SchubertPolynomialPackage)
    (E : SchubertPolynomialEvidence P) : SchubertPolynomialClosed P := by
  exact And.intro E.basisPropertyClosed E.multiplicationRuleClosed

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse