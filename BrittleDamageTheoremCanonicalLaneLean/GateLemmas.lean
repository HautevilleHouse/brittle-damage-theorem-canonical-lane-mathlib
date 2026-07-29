import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleDamageTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse