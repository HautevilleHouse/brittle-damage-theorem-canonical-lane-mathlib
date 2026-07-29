import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure GriffithCriterionPackage where
  crackLength : Type u
  appliedStress : Type v
  criticalEnergyRelease : Prop
  crackGrowthCondition : Prop

structure GriffithCriterionEvidence (G : GriffithCriterionPackage) where
  criticalEnergyReleaseClosed : G.criticalEnergyRelease
  crackGrowthConditionClosed : G.crackGrowthCondition

def GriffithCriterionClosed (G : GriffithCriterionPackage) : Prop :=
  G.criticalEnergyRelease ∧ G.crackGrowthCondition

theorem griffith_criterion_closed_from_evidence (G : GriffithCriterionPackage) (E : GriffithCriterionEvidence G) :
    GriffithCriterionClosed G := by
  exact And.intro E.criticalEnergyReleaseClosed E.crackGrowthConditionClosed

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse