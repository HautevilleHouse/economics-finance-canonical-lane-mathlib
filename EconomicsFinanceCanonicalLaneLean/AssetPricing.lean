import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsFinanceCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

structure AssetPricingPackage {U : UtilityPreferencePackage}
    {A : ArrowDebreuEquilibriumPackage U} where
  assetSpace : Type u
  stateSpace : Type v
  payoffFunction : assetSpace → stateSpace → ℝ
  noArbitrageCondition : Prop
  riskNeutralProbability : Prop

structure AssetPricingEvidence {U : UtilityPreferencePackage}
    {A : ArrowDebreuEquilibriumPackage U} (P : AssetPricingPackage A) where
  noArbitrageConditionClosed : P.noArbitrageCondition
  riskNeutralProbabilityClosed : P.riskNeutralProbability

def AssetPricingClosed {U : UtilityPreferencePackage}
    {A : ArrowDebreuEquilibriumPackage U} (P : AssetPricingPackage A) : Prop :=
  P.noArbitrageCondition ∧ P.riskNeutralProbability

theorem asset_pricing_closed_from_evidence {U : UtilityPreferencePackage}
    {A : ArrowDebreuEquilibriumPackage U} (P : AssetPricingPackage A)
    (E : AssetPricingEvidence P) : AssetPricingClosed P := by
  exact And.intro E.noArbitrageConditionClosed E.riskNeutralProbabilityClosed

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse
