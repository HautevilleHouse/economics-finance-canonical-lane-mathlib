import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsFinanceCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

structure GrowthModelPackage {U : UtilityPreferencePackage}
    {A : ArrowDebreuEquilibriumPackage U} where
  capitalStock : Type u
  productionFunction : capitalStock → capitalStock
  savingsRate : ℝ
  steadyStateExistence : Prop
  convergenceDynamics : Prop

structure GrowthModelEvidence {U : UtilityPreferencePackage}
    {A : ArrowDebreuEquilibriumPackage U} (G : GrowthModelPackage A) where
  steadyStateExistenceClosed : G.steadyStateExistence
  convergenceDynamicsClosed : G.convergenceDynamics

def GrowthModelClosed {U : UtilityPreferencePackage}
    {A : ArrowDebreuEquilibriumPackage U} (G : GrowthModelPackage A) : Prop :=
  G.steadyStateExistence ∧ G.convergenceDynamics

theorem growth_model_closed_from_evidence {U : UtilityPreferencePackage}
    {A : ArrowDebreuEquilibriumPackage U} (G : GrowthModelPackage A)
    (E : GrowthModelEvidence G) : GrowthModelClosed G := by
  exact And.intro E.steadyStateExistenceClosed E.convergenceDynamicsClosed

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse
