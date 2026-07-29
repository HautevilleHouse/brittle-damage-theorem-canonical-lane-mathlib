import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure BrittleObject where
  material : Type
  crackSet : Type
  energyFunctional : Type
  fractureToughness : Prop
  damageThreshold : Prop
  stressDistribution : Prop
  fractureToughnessClosed : fractureToughness
  damageThresholdClosed : damageThreshold
  stressDistributionClosed : stressDistribution

structure BrittleAdmittedObject where
  object : BrittleObject
  brittleClosed : Prop
  brittleWitness : brittleClosed

def brittleWitnessClosed (O : BrittleAdmittedObject) : Prop :=
  O.brittleClosed

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse
