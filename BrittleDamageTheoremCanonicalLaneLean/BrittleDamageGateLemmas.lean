import BrittleDamageTheoremCanonicalLaneLean.BrittleDamageBridgeLemmas

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

def gateClosed (A : BrittleDamageAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BrittleDamageAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse