import ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean.GrassmannianVariety

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean

structure FlagVariety (n : ℕ) where
  flagType : Type u
  completeFlagSet : Set (List (Submodule (Fin n → ℂ) (Fin n → ℂ)))
  schubertVarietyDecomposition : Prop
  bottSamelsonResolution : Prop

def FlagVarietyClosed {n : ℕ} (F : FlagVariety n) : Prop :=
  F.schubertVarietyDecomposition ∧ F.bottSamelsonResolution

theorem flag_variety_closed {n : ℕ} (F : FlagVariety n) : FlagVarietyClosed F :=
  by
    exact And.intro F.schubertVarietyDecomposition F.bottSamelsonResolution

end ClassicalProblemsSchubertCalculusFoundationCanonicalLaneLean
end HautevilleHouse