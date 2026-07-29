import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

structure UtilityPreferencePackage where
  consumptionSet : Type u
  preferenceRelation : Type v
  utilityFunction : Type w
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  monotonicity : Prop
  convexity : Prop

structure UtilityPreferenceEvidence (U : UtilityPreferencePackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  monotonicityClosed : U.monotonicity
  convexityClosed : U.convexity

def UtilityPreferenceClosed (U : UtilityPreferencePackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.monotonicity ∧ U.convexity

theorem utility_preference_closed_from_evidence (U : UtilityPreferencePackage)
    (E : UtilityPreferenceEvidence U) : UtilityPreferenceClosed U := by
  exact And.intro E.completenessClosed
    (And.intro E.transitivityClosed
      (And.intro E.continuityClosed
        (And.intro E.monotonicityClosed E.convexityClosed)))

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse