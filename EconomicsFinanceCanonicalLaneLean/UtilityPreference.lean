import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

structure UtilityPreferencePackage where
  consumptionBundle : Type u
  preferenceRelation : consumptionBundle → consumptionBundle → Prop
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  strongMonotonicity : Prop

structure UtilityPreferenceEvidence (U : UtilityPreferencePackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  strongMonotonicityClosed : U.strongMonotonicity

def UtilityPreferenceClosed (U : UtilityPreferencePackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.strongMonotonicity

theorem utility_preference_closed_from_evidence (U : UtilityPreferencePackage)
    (E : UtilityPreferenceEvidence U) : UtilityPreferenceClosed U := by
  exact And.intro E.completenessClosed
    (And.intro E.transitivityClosed
      (And.intro E.continuityClosed E.strongMonotonicityClosed))

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse
