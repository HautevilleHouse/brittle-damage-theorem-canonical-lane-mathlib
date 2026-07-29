import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure BrittleDamageMaterial where
  elasticModulus : ℝ
  fractureToughness : ℝ
  criticalStrain : ℝ
  damageThreshold : ℝ
  damageThresholdPositive : damageThreshold > 0

structure FractureProcessZone (M : BrittleDamageMaterial) where
  stressConcentrationFactor : ℝ
  processZoneRadius : ℝ
  energyReleaseRate : ℝ
  energyReleaseRatePositive : energyReleaseRate > 0

structure CohesiveZoneModel (M : BrittleDamageMaterial) where
  cohesiveTraction : ℝ
  separationDisplacement : ℝ
  tractionSeparationLaw : Prop
  lawSatisfied : tractionSeparationLaw

def BrittleDamageAdmittedObject (M : BrittleDamageMaterial) : Prop :=
  M.damageThreshold > 0 ∧ M.elasticModulus > 0 ∧ M.fractureToughness > 0

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse