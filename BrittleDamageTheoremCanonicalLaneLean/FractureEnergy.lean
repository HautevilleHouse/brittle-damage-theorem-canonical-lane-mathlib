import BrittleDamageTheoremCanonicalLaneLean.StressField

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure FractureEnergyPackage {M : MaterialPackage}
    (S : StressFieldPackage M) where
  elasticEnergy : Type u
  surfaceEnergy : Type v
  dissipationEnergy : Type w
  energyBalanceEquation : Prop
  energyReleaseCriterion : Prop

def FractureEnergyClosed {M : MaterialPackage}
    {S : StressFieldPackage M} (F : FractureEnergyPackage S) : Prop :=
  F.energyBalanceEquation ∧ F.energyReleaseCriterion

structure FractureEnergyEvidence {M : MaterialPackage}
    {S : StressFieldPackage M} (F : FractureEnergyPackage S) where
  energyBalanceEquationClosed : F.energyBalanceEquation
  energyReleaseCriterionClosed : F.energyReleaseCriterion

theorem fracture_energy_closed_from_evidence
    {M : MaterialPackage} {S : StressFieldPackage M}
    (F : FractureEnergyPackage S) (E : FractureEnergyEvidence F) :
    FractureEnergyClosed F := by
  exact And.intro E.energyBalanceEquationClosed E.energyReleaseCriterionClosed

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse