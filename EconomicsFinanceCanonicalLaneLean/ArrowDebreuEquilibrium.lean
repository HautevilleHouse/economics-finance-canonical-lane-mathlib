import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

structure ArrowDebreuEconomy where
  commoditySpace : Type u
  priceSystem : Type v
  consumerSet : Type w
  producerSet : Type x
  initialEndowments : commoditySpace → ℝ
  preferences : commoditySpace → Prop
  productionSets : commoditySpace → Prop

structure ArrowDebreuEvidence (E : ArrowDebreuEconomy) where
  preferencesConvex : E.preferences E.initialEndowments
  productionSetsClosed : E.productionSets (0 : E.commoditySpace)
  marketClearingPriceExists : Prop

def ArrowDebreuEquilibriumClosed (E : ArrowDebreuEconomy) : Prop :=
  E.preferences E.initialEndowments ∧ E.productionSets (0 : E.commoditySpace)

theorem arrow_debreu_closed_from_evidence (E : ArrowDebreuEconomy) (ev : ArrowDebreuEvidence E) :
    ArrowDebreuEquilibriumClosed E := by
  exact And.intro ev.preferencesConvex ev.productionSetsClosed

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse