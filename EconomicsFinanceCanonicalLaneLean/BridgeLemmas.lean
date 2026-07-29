import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.admissibleConclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse