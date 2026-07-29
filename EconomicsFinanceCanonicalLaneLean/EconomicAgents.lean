import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

structure EconomicAgent where
  preferences : Type u
  endowment : Type v
  utilityFunction : preferences → ℝ
  budgetConstraint : ℝ → Prop

structure AgentOptimalChoice (A : EconomicAgent) where
  chosenBundle : A.endowment
  maximizesUtility : Prop
  satisfiesBudget : Prop

theorem agent_optimality_condition (A : EconomicAgent) (opt : AgentOptimalChoice A) :
  opt.satisfiesBudget := opt.satisfiesBudget

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse
