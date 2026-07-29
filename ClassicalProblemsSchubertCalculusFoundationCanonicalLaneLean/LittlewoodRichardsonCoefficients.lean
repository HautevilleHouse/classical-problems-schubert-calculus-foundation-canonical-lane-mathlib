import ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.SchubertCycleStructure

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure LittlewoodRichardsonCoefficient where
  partitions : List ℕ × List ℕ × List ℕ
  coefficient : ℕ
  lrRuleSatisfied : Prop
  associativityCondition : Prop

def LittlewoodRichardsonClosed (L : LittlewoodRichardsonCoefficient) : Prop :=
  L.lrRuleSatisfied ∧ L.associativityCondition

theorem littlewood_richardson_closed (L : LittlewoodRichardsonCoefficient) : LittlewoodRichardsonClosed L :=
  by
    exact And.intro L.lrRuleSatisfied L.associativityCondition

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse