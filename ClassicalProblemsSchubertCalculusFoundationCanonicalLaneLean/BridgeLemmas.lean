import ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GrassmannianClosed A.grassmannian

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    exact A.grassmannian.schubertCellDecomposition

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse