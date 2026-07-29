import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.PieriRule
import HautevilleHouse.ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.SchubertPolynomials

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

def ConstrainedSchubertClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_schubert_endgame (A : AdmissibleClass) :
    ConstrainedSchubertClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse