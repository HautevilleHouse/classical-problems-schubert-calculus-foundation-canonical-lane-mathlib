import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure GrassmannianPackage where
  grassmannian : Type u
  tautologicalBundles : Type v
  schubertVarieties : Prop
  schubertCycles : Prop
  degenerationSequences : Prop

structure GrassmannianEvidence (G : GrassmannianPackage) where
  schubertVarietiesClosed : G.schubertVarieties
  schubertCyclesClosed : G.schubertCycles
  degenerationSequencesClosed : G.degenerationSequences

def GrassmannianClosed (G : GrassmannianPackage) : Prop :=
  G.schubertVarieties ∧ G.schubertCycles ∧ G.degenerationSequences

theorem grassmannian_closed_from_evidence (G : GrassmannianPackage) (E : GrassmannianEvidence G) : GrassmannianClosed G := by
  exact And.intro E.schubertVarietiesClosed (And.intro E.schubertCyclesClosed E.degenerationSequencesClosed)

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse