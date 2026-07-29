import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinanceCanonicalLaneLean

structure PreferenceRelation (A : Type u) where
  relation : A -> A -> Prop
  completeness : ∀ x y : A, relation x y ∨ relation y x
  transitivity : ∀ x y z : A, relation x y → relation y z → relation x z

structure UtilityFunction (A : Type u) where
  carrier : A -> ℝ
  represents : PreferenceRelation A -> Prop

structure UtilityRepresentationPackage (A : Type u) (P : PreferenceRelation A) where
  utility : UtilityFunction A
  representationProof : utility.represents P

structure UtilityRepresentationEvidence (A : Type u) (P : PreferenceRelation A) (U : UtilityRepresentationPackage A P) where
  representationClosed : U.representationProof

def UtilityRepresentationClosed (A : Type u) (P : PreferenceRelation A) (U : UtilityRepresentationPackage A P) : Prop :=
  U.representationProof

theorem utility_representation_closed_from_evidence (A : Type u) (P : PreferenceRelation A) (U : UtilityRepresentationPackage A P) (Ev : UtilityRepresentationEvidence A P U) : UtilityRepresentationClosed A P U := by
  exact Ev.representationClosed

end EconomicsFinanceCanonicalLaneLean
end HautevilleHouse
