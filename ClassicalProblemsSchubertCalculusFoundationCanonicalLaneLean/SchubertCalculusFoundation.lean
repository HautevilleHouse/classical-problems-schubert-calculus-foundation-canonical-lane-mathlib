import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure SchubertCalculusFoundationPackage where
  grassmannian : GrassmannianPackage 2 4
  schubertCycle : SchubertCyclePackage 2 4 grassmannian
  pieriRule : PieriRulePackage 2 4 grassmannian schubertCycle
  giambelliFormula : GiambelliFormulaPackage 2 4 grassmannian schubertCycle pieriRule
  foundationClosed : Prop

structure SchubertCalculusFoundationEvidence
    (F : SchubertCalculusFoundationPackage) where
  grassmannianClosed : GrassmannianClosed 2 4 F.grassmannian
  schubertCycleClosed : SchubertCycleClosed 2 4 F.grassmannian F.schubertCycle
  pieriRuleClosed : PieriRuleClosed 2 4 F.grassmannian F.schubertCycle F.pieriRule
  giambelliFormulaClosed : GiambelliFormulaClosed 2 4 F.grassmannian F.schubertCycle
    F.pieriRule F.giambelliFormula
  foundationClosedFromComponents : F.foundationClosed

def SchubertCalculusFoundationClosed (F : SchubertCalculusFoundationPackage) : Prop :=
  F.foundationClosed

theorem schubert_calculus_foundation_closed_from_evidence
    (F : SchubertCalculusFoundationPackage)
    (E : SchubertCalculusFoundationEvidence F) :
    SchubertCalculusFoundationClosed F := by
  exact E.foundationClosedFromComponents

def ConstrainedSchubertClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_schubert_endgame (A : AdmissibleClass) :
    ConstrainedSchubertClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse