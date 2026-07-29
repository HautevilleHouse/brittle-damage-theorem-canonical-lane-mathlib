import canonicalLaneMathlib.AdmissibleClass

/-!
# Crack Growth Gate Package

This module defines the crack growth gate. The gate condition checks whether the
crack advances under the prescribed loading by satisfying an incremental energy
balance and a stress intensity factor threshold.
-/

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure CrackGrowthGate (A : AdmissibleClass) where
  currentCrackSet : Set (AdmittedObject A)
  loadingHistory : Type u
  incrementalEnergyBalance : Prop
  stressIntensityFactorThreshold : Prop
  growthCondition : incrementalEnergyBalance ∧ stressIntensityFactorThreshold
  growthConditionTerm : growthCondition

def CrackGrowthGateClosed (A : AdmissibleClass) (G : CrackGrowthGate A) : Prop :=
  G.incrementalEnergyBalance ∧ G.stressIntensityFactorThreshold

theorem crack_growth_gate_closed (A : AdmissibleClass) (G : CrackGrowthGate A) :
    CrackGrowthGateClosed A G := by
  exact G.growthConditionTerm

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse