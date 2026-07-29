import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure CrackPropagationPackage where
  crackFront : Type u
  stressField : Type v
  propagationCriterion : Prop
  energyReleaseRate : Prop
  crackPathRegularity : Prop

structure CrackPropagationEvidence (C : CrackPropagationPackage) where
  propagationCriterionClosed : C.propagationCriterion
  energyReleaseRateClosed : C.energyReleaseRate
  crackPathRegularityClosed : C.crackPathRegularity

def CrackPropagationClosed (C : CrackPropagationPackage) : Prop :=
  C.propagationCriterion ∧ C.energyReleaseRate ∧ C.crackPathRegularity

theorem crack_propagation_closed_from_evidence (C : CrackPropagationPackage) (E : CrackPropagationEvidence C) :
    CrackPropagationClosed C := by
  exact And.intro E.propagationCriterionClosed (And.intro E.energyReleaseRateClosed E.crackPathRegularityClosed)

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse