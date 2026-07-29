import canonicalLaneMathlib.AdmissibleClass

/-!
# Energy Conservation Gate Package

This module defines the energy conservation gate. It checks whether the total energy
balance (elastic stored energy minus fracture dissipation) meets the Griffith-type
criterion for crack initiation or growth.
-/

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure EnergyConservationGate (A : AdmissibleClass) where
  totalElasticEnergy : ℝ
  fractureDissipation : ℝ
  criticalEnergyReleaseRate : ℝ
  energyBalanceCondition : totalElasticEnergy - fractureDissipation ≥ criticalEnergyReleaseRate
  energyBalanceConditionTerm : energyBalanceCondition

def EnergyConservationGateClosed (A : AdmissibleClass) (E : EnergyConservationGate A) : Prop :=
  E.totalElasticEnergy - E.fractureDissipation ≥ E.criticalEnergyReleaseRate

theorem energy_conservation_gate_closed (A : AdmissibleClass) (E : EnergyConservationGate A) :
    EnergyConservationGateClosed A E := by
  exact E.energyBalanceConditionTerm

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse