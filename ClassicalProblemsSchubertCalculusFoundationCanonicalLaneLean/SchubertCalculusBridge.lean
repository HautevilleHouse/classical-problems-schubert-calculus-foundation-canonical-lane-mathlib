import canonicalLaneMathlib.AdmissibleClass
import ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.GrassmannVariety
import ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.SchubertCycle
import ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.PieriRule
import ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.LittlewoodRichardsonRule

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure SchubertCalculusPackage (k n : ℕ) where
  grassmann : GrassmannVariety k n
  cycles : List (SchubertCycle k n grassmann)
  pieri : PieriRule k n grassmann
  lrRule : LittlewoodRichardsonRule k n grassmann

structure SchubertCalculusEvidence (P : SchubertCalculusPackage k n) where
  grassmannClosed : GrassmannVarietyClosed P.grassmann
  cyclesClosed : ∀ σ ∈ P.cycles, SchubertCycleClosed σ
  pieriClosed : PieriRuleClosed P.pieri
  lrRuleClosed : LittlewoodRichardsonRuleClosed P.lrRule

def SchubertCalculusClosed (P : SchubertCalculusPackage k n) : Prop :=
  GrassmannVarietyClosed P.grassmann ∧
  (∀ σ ∈ P.cycles, SchubertCycleClosed σ) ∧
  PieriRuleClosed P.pieri ∧
  LittlewoodRichardsonRuleClosed P.lrRule

theorem schubert_calculus_closed_from_evidence (P : SchubertCalculusPackage k n) (E : SchubertCalculusEvidence P) : SchubertCalculusClosed P :=
  And.intro E.grassmannClosed (And.intro E.cyclesClosed (And.intro E.pieriClosed E.lrRuleClosed))

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse