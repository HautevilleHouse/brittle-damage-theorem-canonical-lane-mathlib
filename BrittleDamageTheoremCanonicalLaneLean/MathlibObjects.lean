import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure BrittleDamageSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BrittleDamageAdmittedObject where
  space : BrittleDamageSpace
  elasticBody : Prop
  crackSet : Prop
  crackIrreversibility : Prop
  stressField : Type
  stressFieldTopology : TopologicalSpace stressField
  damageThreshold : Prop
  conclusion : damageThreshold

structure BrittleDamageEndgameState where
  object : BrittleDamageAdmittedObject

def BrittleDamageWitnessClosed (O : BrittleDamageAdmittedObject) : Prop :=
  O.damageThreshold

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse