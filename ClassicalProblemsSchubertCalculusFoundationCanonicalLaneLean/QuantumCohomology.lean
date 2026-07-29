import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure QuantumCohomologyPackage where
  quantumRing : Type u
  gromovWittenInvariants : Type v
  quantumSchubertCalculus : Prop
  quantumGiambelli : Prop
  smallQuantumCohomology : Prop

structure QuantumCohomologyEvidence (Q : QuantumCohomologyPackage) where
  quantumSchubertCalculusClosed : Q.quantumSchubertCalculus
  quantumGiambelliClosed : Q.quantumGiambelli
  smallQuantumCohomologyClosed : Q.smallQuantumCohomology

def QuantumCohomologyClosed (Q : QuantumCohomologyPackage) : Prop :=
  Q.quantumSchubertCalculus ∧ Q.quantumGiambelli ∧ Q.smallQuantumCohomology

theorem quantum_cohomology_closed_from_evidence (Q : QuantumCohomologyPackage) (E : QuantumCohomologyEvidence Q) : QuantumCohomologyClosed Q := by
  exact And.intro E.quantumSchubertCalculusClosed (And.intro E.quantumGiambelliClosed E.smallQuantumCohomologyClosed)

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse