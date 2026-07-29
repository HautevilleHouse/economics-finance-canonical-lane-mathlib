import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

structure PricingKernel where
  statePrices : Type u
  stochasticDiscountFactor : Type v
  expectedReturns : Prop
  riskNeutralMeasure : Prop

structure AssetPricingEvidence (P : PricingKernel) where
  noArbitrage : P.expectedReturns
  riskNeutralExists : P.riskNeutralMeasure

def AssetPricingClosed (P : PricingKernel) : Prop :=
  P.expectedReturns ∧ P.riskNeutralMeasure

theorem asset_pricing_closed_from_evidence (P : PricingKernel) (ev : AssetPricingEvidence P) :
    AssetPricingClosed P := by
  exact And.intro ev.noArbitrage ev.riskNeutralExists

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse