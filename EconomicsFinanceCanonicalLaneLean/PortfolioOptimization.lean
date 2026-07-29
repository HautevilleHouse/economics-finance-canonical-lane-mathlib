import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsFinanceCanonicalLaneLean.AssetPricing

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

structure PortfolioOptimizationPackage {U : UtilityPreferencePackage}
    {A : ArrowDebreuEquilibriumPackage U} {P : AssetPricingPackage A} where
  investorWealth : ℝ
  riskAversionParameter : ℝ
  optimalPortfolioExists : Prop
  efficientFrontierCharacterized : Prop

structure PortfolioOptimizationEvidence {U : UtilityPreferencePackage}
    {A : ArrowDebreuEquilibriumPackage U} {P : AssetPricingPackage A}
    (O : PortfolioOptimizationPackage P) where
  optimalPortfolioExistsClosed : O.optimalPortfolioExists
  efficientFrontierCharacterizedClosed : O.efficientFrontierCharacterized

def PortfolioOptimizationClosed {U : UtilityPreferencePackage}
    {A : ArrowDebreuEquilibriumPackage U} {P : AssetPricingPackage A}
    (O : PortfolioOptimizationPackage P) : Prop :=
  O.optimalPortfolioExists ∧ O.efficientFrontierCharacterized

theorem portfolio_optimization_closed_from_evidence {U : UtilityPreferencePackage}
    {A : ArrowDebreuEquilibriumPackage U} {P : AssetPricingPackage A}
    (O : PortfolioOptimizationPackage P) (E : PortfolioOptimizationEvidence O) :
    PortfolioOptimizationClosed O := by
  exact And.intro E.optimalPortfolioExistsClosed E.efficientFrontierCharacterizedClosed

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse
