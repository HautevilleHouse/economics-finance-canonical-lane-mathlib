import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsFinanceCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.EconomicsFinanceCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

def ConstrainedEconomicsFinanceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_economics_finance_endgame (A : AdmissibleClass) :
    ConstrainedEconomicsFinanceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse