import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

structure GrowthModelPackage where
  productionFunction : Type u
  capitalAccumulation : Prop
  consumptionChoice : Prop
  steadyState : Prop
  convergence : Prop
  optimalGrowth : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  capitalAccumulationClosed : G.capitalAccumulation
  consumptionChoiceClosed : G.consumptionChoice
  steadyStateClosed : G.steadyState
  convergenceClosed : G.convergence
  optimalGrowthClosed : G.optimalGrowth

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.capitalAccumulation ∧ G.consumptionChoice ∧ G.steadyState ∧ G.convergence ∧ G.optimalGrowth

theorem growth_model_closed_from_evidence (G : GrowthModelPackage)
    (ev : GrowthModelEvidence G) : GrowthModelClosed G := by
  exact And.intro ev.capitalAccumulationClosed
    (And.intro ev.consumptionChoiceClosed
      (And.intro ev.steadyStateClosed
        (And.intro ev.convergenceClosed ev.optimalGrowthClosed)))

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse