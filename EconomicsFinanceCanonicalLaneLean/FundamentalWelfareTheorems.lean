import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

structure FundamentalWelfarePackage where
  economy : ArrowDebreuEquilibriumPackage
  paretoOptimality : Prop
  firstWelfareTheorem : Prop
  secondWelfareTheorem : Prop
  lumpSumTransfers : Prop

structure FundamentalWelfareEvidence (W : FundamentalWelfarePackage) where
  paretoOptimalityClosed : W.paretoOptimality
  firstWelfareTheoremClosed : W.firstWelfareTheorem
  secondWelfareTheoremClosed : W.secondWelfareTheorem
  lumpSumTransfersClosed : W.lumpSumTransfers

def FundamentalWelfareClosed (W : FundamentalWelfarePackage) : Prop :=
  W.paretoOptimality ∧ W.firstWelfareTheorem ∧ W.secondWelfareTheorem ∧ W.lumpSumTransfers

theorem fundamental_welfare_closed_from_evidence (W : FundamentalWelfarePackage)
    (ev : FundamentalWelfareEvidence W) : FundamentalWelfareClosed W := by
  exact And.intro ev.paretoOptimalityClosed
    (And.intro ev.firstWelfareTheoremClosed
      (And.intro ev.secondWelfareTheoremClosed ev.lumpSumTransfersClosed))

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse