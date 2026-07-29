import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleDamageTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BrittleDamageTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

def ConstrainedBrittleDamageClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_brittle_damage_endgame (A : AdmissibleClass) :
    ConstrainedBrittleDamageClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse