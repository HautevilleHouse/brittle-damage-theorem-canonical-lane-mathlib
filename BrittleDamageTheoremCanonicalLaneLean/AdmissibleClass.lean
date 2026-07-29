import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : Prop  -- Placeholder for the actual brittle damage statement
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse