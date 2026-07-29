import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

structure RamseyGrowthPackage where
  householdSector : Type u
  firmSector : Type v
  capitalAccumulation : Prop
  consumptionSmoothing : Prop
  steadyState : Prop
  convergenceDynamics : Prop

structure RamseyGrowthEvidence (R : RamseyGrowthPackage) where
  capitalAccumulationClosed : R.capitalAccumulation
  consumptionSmoothingClosed : R.consumptionSmoothing
  steadyStateClosed : R.steadyState
  convergenceDynamicsClosed : R.convergenceDynamics

def RamseyGrowthClosed (R : RamseyGrowthPackage) : Prop :=
  R.capitalAccumulation ∧ R.consumptionSmoothing ∧ R.steadyState ∧ R.convergenceDynamics

theorem ramsey_growth_closed_from_evidence (R : RamseyGrowthPackage)
    (E : RamseyGrowthEvidence R) : RamseyGrowthClosed R := by
  exact And.intro E.capitalAccumulationClosed
    (And.intro E.consumptionSmoothingClosed
      (And.intro E.steadyStateClosed E.convergenceDynamicsClosed))

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse