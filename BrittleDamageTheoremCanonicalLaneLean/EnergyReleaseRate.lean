import BrittleDamageTheoremCanonicalLaneLean.FractureCriterion

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure EnergyReleaseRatePackage {A : AdmissibleClass} (F : FractureCriterionPackage A) where
  storedElasticEnergy : ℕ
  surfaceEnergy : ℕ
  criticalEnergyRelease : ℕ
  irwinCriterion : Prop

def fractureCriterionClosed {A : AdmissibleClass} (O : BrittleDamageAdmittedObject) : Prop :=
  O.crackPropagationStable

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse