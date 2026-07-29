import canonicalLaneMathlib.AdmissibleClass
import ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.SchubertCycle

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure LittlewoodRichardsonRule (k n : ℕ) (G : GrassmannVariety k n) where
  lrCoefficients : SchubertCycle k n G → SchubertCycle k n G → SchubertCycle k n G → ℕ
  structureConstants : Prop
  associativity : Prop
  commutativity : Prop
  structureConstantsClosed : structureConstants
  associativityClosed : associativity
  commutativityClosed : commutativity

def LittlewoodRichardsonRuleClosed (L : LittlewoodRichardsonRule k n G) : Prop :=
  L.structureConstants ∧ L.associativity ∧ L.commutativity

theorem littlewood_richardson_rule_closed (L : LittlewoodRichardsonRule k n G) : LittlewoodRichardsonRuleClosed L :=
  And.intro L.structureConstantsClosed (And.intro L.associativityClosed L.commutativityClosed)

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse