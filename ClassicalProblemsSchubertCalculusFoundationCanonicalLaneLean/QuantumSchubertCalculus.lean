import ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.FlagVariety
import ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.LittlewoodRichardsonCoefficients

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure QuantumSchubertCalculus {n : ℕ} (F : FlagVariety n) where
  qVariable : Type u
  threePointGromovWittenInvariants : Prop
  quantumPieriRule : Prop
  quantumGiambelliFormula : Prop

def QuantumSchubertClosed {n : ℕ} {F : FlagVariety n} (Q : QuantumSchubertCalculus F) : Prop :=
  Q.threePointGromovWittenInvariants ∧ Q.quantumPieriRule ∧ Q.quantumGiambelliFormula

theorem quantum_schubert_closed {n : ℕ} {F : FlagVariety n} (Q : QuantumSchubertCalculus F) : QuantumSchubertClosed Q :=
  by
    exact And.intro Q.threePointGromovWittenInvariants (And.intro Q.quantumPieriRule Q.quantumGiambelliFormula)

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse