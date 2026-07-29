import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

structure ConsumptionCAPMModel where
  consumptionGrowth : ℝ
  riskAversion : ℝ
  discountFactor : ℝ
  assetReturn : ℝ -> ℝ
  beta : ℝ

structure CcapmPricingPackage (M : ConsumptionCAPMModel) where
  eulerEquation : Prop
  linearBetaPricing : Prop

structure CcapmPricingEvidence (M : ConsumptionCAPMModel) (P : CcapmPricingPackage M) where
  eulerEquationClosed : P.eulerEquation
  linearBetaPricingClosed : P.linearBetaPricing

def CcapmPricingClosed (M : ConsumptionCAPMModel) (P : CcapmPricingPackage M) : Prop :=
  P.eulerEquation ∧ P.linearBetaPricing

theorem ccapm_pricing_closed_from_evidence (M : ConsumptionCAPMModel) (P : CcapmPricingPackage M) (Ev : CcapmPricingEvidence M P) : CcapmPricingClosed M P := by
  exact And.intro Ev.eulerEquationClosed Ev.linearBetaPricingClosed

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse
