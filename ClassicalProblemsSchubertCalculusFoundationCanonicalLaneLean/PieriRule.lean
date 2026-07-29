import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.SchubertCells

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure PieriRulePackage (n : ℕ) (k : ℕ) where
  cellProduct : SchubertCell n k → SchubertCell n k → SchubertCell n k
  ruleFormula : Prop
  ruleCombinatorial : Prop
  ruleVerified : Prop

structure PieriRuleEvidence (n : ℕ) (k : ℕ) (P : PieriRulePackage n k) where
  ruleFormulaClosed : P.ruleFormula
  ruleCombinatorialClosed : P.ruleCombinatorial
  ruleVerifiedClosed : P.ruleVerified

def PieriRuleClosed {n k : ℕ} (P : PieriRulePackage n k) : Prop :=
  P.ruleFormula ∧ P.ruleCombinatorial ∧ P.ruleVerified

theorem pieri_rule_closed_from_evidence {n k : ℕ} (P : PieriRulePackage n k)
    (E : PieriRuleEvidence n k P) : PieriRuleClosed P := by
  exact And.intro E.ruleFormulaClosed
    (And.intro E.ruleCombinatorialClosed E.ruleVerifiedClosed)

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse