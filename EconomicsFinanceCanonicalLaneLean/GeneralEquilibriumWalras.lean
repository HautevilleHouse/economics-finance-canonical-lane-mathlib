import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

structure WalrasGeneralEquilibriumPackage where
  agentSet : Type u
  commoditySpace : Type v
  endowments : Type w
  priceSystem : Type x
  excessDemandFunction : Prop
  walrasLaw : Prop
  equilibriumExistence : Prop
  paretoEfficiency : Prop

structure WalrasGeneralEquilibriumEvidence (W : WalrasGeneralEquilibriumPackage) where
  excessDemandFunctionClosed : W.excessDemandFunction
  walrasLawClosed : W.walrasLaw
  equilibriumExistenceClosed : W.equilibriumExistence
  paretoEfficiencyClosed : W.paretoEfficiency

def WalrasGeneralEquilibriumClosed (W : WalrasGeneralEquilibriumPackage) : Prop :=
  W.excessDemandFunction ∧ W.walrasLaw ∧ W.equilibriumExistence ∧ W.paretoEfficiency

theorem walras_general_equilibrium_closed_from_evidence (W : WalrasGeneralEquilibriumPackage)
    (E : WalrasGeneralEquilibriumEvidence W) : WalrasGeneralEquilibriumClosed W := by
  exact And.intro E.excessDemandFunctionClosed
    (And.intro E.walrasLawClosed
      (And.intro E.equilibriumExistenceClosed E.paretoEfficiencyClosed))

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse