import BrittleDamageTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure FractureCriterionPackage (A : AdmissibleClass) where
  criticalStressIntensity : ℕ
  energyReleaseRateThreshold : ℕ
  griffithCriterion : Prop
  crackGrowthCondition : Prop
  fractureState : Prop

structure FractureCriterionEvidence {A : AdmissibleClass} (F : FractureCriterionPackage A) where
  griffithCriterionClosed : F.griffithCriterion
  crackGrowthConditionClosed : F.crackGrowthCondition
  fractureStateClosed : F.fractureState

def FractureCriterionClosed {A : AdmissibleClass} (F : FractureCriterionPackage A) : Prop :=
  F.griffithCriterion ∧ F.crackGrowthCondition ∧ F.fractureState

theorem fracture_criterion_closed_from_evidence
    {A : AdmissibleClass} (F : FractureCriterionPackage A) (E : FractureCriterionEvidence F) :
    FractureCriterionClosed F := by
  exact And.intro E.griffithCriterionClosed
    (And.intro E.crackGrowthConditionClosed E.fractureStateClosed)

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse