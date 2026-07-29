import BrittleDamageTheoremCanonicalLaneLean.BrittleDamageCrackPropagation

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure EnergyReleasePackage {A : BrittleDamageAdmissibleClass} (C : CrackPropagationPackage A) where
  elasticEnergy : ℝ
  surfaceEnergy : ℝ
  energyBalance : elasticEnergy = surfaceEnergy

structure EnergyReleaseEvidence {A : BrittleDamageAdmissibleClass} {C : CrackPropagationPackage A} (E : EnergyReleasePackage C) where
  energyBalanceClosed : E.energyBalance

def EnergyReleaseClosed {A : BrittleDamageAdmissibleClass} {C : CrackPropagationPackage A} (E : EnergyReleasePackage C) : Prop :=
  E.energyBalance

theorem energy_release_closed_from_evidence {A : BrittleDamageAdmissibleClass} {C : CrackPropagationPackage A} (E : EnergyReleasePackage C) (Ev : EnergyReleaseEvidence E) :
    EnergyReleaseClosed E := by
  exact Ev.energyBalanceClosed

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse