import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure PieriRulePackage (k n : ℕ) (G : GrassmannianPackage k n)
    (S : SchubertCyclePackage k n G) where
  specialSchubertCycle : Prop
  multiplicationRule : Prop
  coefficientFormula : Prop
  ruleProven : Prop

structure PieriRuleEvidence (k n : ℕ) (G : GrassmannianPackage k n)
    (S : SchubertCyclePackage k n G) (P : PieriRulePackage k n G S) where
  specialSchubertCycleClosed : P.specialSchubertCycle
  multiplicationRuleClosed : P.multiplicationRule
  coefficientFormulaClosed : P.coefficientFormula
  ruleProvenClosed : P.ruleProven

def PieriRuleClosed (k n : ℕ) (G : GrassmannianPackage k n)
    (S : SchubertCyclePackage k n G) (P : PieriRulePackage k n G S) : Prop :=
  P.specialSchubertCycle ∧ P.multiplicationRule ∧
  P.coefficientFormula ∧ P.ruleProven

theorem pieri_rule_closed_from_evidence (k n : ℕ) (G : GrassmannianPackage k n)
    (S : SchubertCyclePackage k n G) (P : PieriRulePackage k n G S)
    (E : PieriRuleEvidence k n G S P) : PieriRuleClosed k n G S P := by
  exact And.intro E.specialSchubertCycleClosed
    (And.intro E.multiplicationRuleClosed
      (And.intro E.coefficientFormulaClosed E.ruleProvenClosed))

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse