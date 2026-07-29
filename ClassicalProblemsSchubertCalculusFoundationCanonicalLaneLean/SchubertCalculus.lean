import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure SchubertCalculusPackage where
  schubertClasses : Type u
  intersectionRing : Type v
  giambelliFormula : Prop
  pieriFormula : Prop
  schubertPolynomials : Prop

structure SchubertCalculusEvidence (S : SchubertCalculusPackage) where
  giambelliFormulaClosed : S.giambelliFormula
  pieriFormulaClosed : S.pieriFormula
  schubertPolynomialsClosed : S.schubertPolynomials

def SchubertCalculusClosed (S : SchubertCalculusPackage) : Prop :=
  S.giambelliFormula ∧ S.pieriFormula ∧ S.schubertPolynomials

theorem schubert_calculus_closed_from_evidence (S : SchubertCalculusPackage) (E : SchubertCalculusEvidence S) : SchubertCalculusClosed S := by
  exact And.intro E.giambelliFormulaClosed (And.intro E.pieriFormulaClosed E.schubertPolynomialsClosed)

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse