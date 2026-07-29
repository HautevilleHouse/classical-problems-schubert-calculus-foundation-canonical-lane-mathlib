import ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.GrassmannianVariety
import ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.SchubertCycleStructure

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure AdmissibleClass where
  grassmannian : GrassmannianVariety 2 4
  schubertCycle : SchubertCycleStructure grassmannian
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GrassmannianClosed A.grassmannian ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse