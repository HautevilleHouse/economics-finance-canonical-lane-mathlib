import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

structure AssetPricingCAPMPackage where
  assetUniverse : Type u
  riskFreeRate : Type v
  marketPortfolio : Type w
  betaCoefficient : Type x
  expectedReturnLinear : Prop
  efficientFrontier : Prop
  systematicRisk : Prop

structure AssetPricingCAPMEvidence (A : AssetPricingCAPMPackage) where
  expectedReturnLinearClosed : A.expectedReturnLinear
  efficientFrontierClosed : A.efficientFrontier
  systematicRiskClosed : A.systematicRisk

def AssetPricingCAPMClosed (A : AssetPricingCAPMPackage) : Prop :=
  A.expectedReturnLinear ∧ A.efficientFrontier ∧ A.systematicRisk

theorem asset_pricing_capm_closed_from_evidence (A : AssetPricingCAPMPackage)
    (E : AssetPricingCAPMEvidence A) : AssetPricingCAPMClosed A := by
  exact And.intro E.expectedReturnLinearClosed
    (And.intro E.efficientFrontierClosed E.systematicRiskClosed)

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse