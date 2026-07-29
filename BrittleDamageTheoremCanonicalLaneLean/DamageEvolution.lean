import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure DamageEvolutionPackage where
  damageVariable : Type u
  evolutionLaw : Prop
  irreversibilityCondition : Prop
  energyDissipation : Prop

structure DamageEvolutionEvidence (D : DamageEvolutionPackage) where
  evolutionLawClosed : D.evolutionLaw
  irreversibilityConditionClosed : D.irreversibilityCondition
  energyDissipationClosed : D.energyDissipation

def DamageEvolutionClosed (D : DamageEvolutionPackage) : Prop :=
  D.evolutionLaw ∧ D.irreversibilityCondition ∧ D.energyDissipation

theorem damage_evolution_closed_from_evidence (D : DamageEvolutionPackage) (E : DamageEvolutionEvidence D) :
    DamageEvolutionClosed D := by
  exact And.intro E.evolutionLawClosed (And.intro E.irreversibilityConditionClosed E.energyDissipationClosed)

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse