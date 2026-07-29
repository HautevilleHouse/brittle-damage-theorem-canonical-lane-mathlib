import BrittleDamageTheoremCanonicalLaneLean.CrackPathEnergy

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure DamageEvolutionPackage {M : MaterialPackage}
    {S : StressFieldPackage M} {F : FractureEnergyPackage S}
    {C : CrackPathEnergyPackage F} (D : DamageVariablePackage C) where
  damageEvolutionLaw : Prop
  irreversibilityConstraint : Prop
  damageDrivingForce : Prop
  initialDamageField : Prop
  boundaryConditions : Prop

def DamageEvolutionClosed {M : MaterialPackage}
    {S : StressFieldPackage M} {F : FractureEnergyPackage S}
    {C : CrackPathEnergyPackage F} (D : DamageVariablePackage C) :
    Prop :=
  D.damageEvolutionLaw ∧ D.irreversibilityConstraint ∧
  D.damageDrivingForce ∧ D.initialDamageField ∧ D.boundaryConditions

structure DamageEvolutionEvidence {M : MaterialPackage}
    {S : StressFieldPackage M} {F : FractureEnergyPackage S}
    {C : CrackPathEnergyPackage F} (D : DamageVariablePackage C) where
  damageEvolutionLawClosed : D.damageEvolutionLaw
  irreversibilityConstraintClosed : D.irreversibilityConstraint
  damageDrivingForceClosed : D.damageDrivingForce
  initialDamageFieldClosed : D.initialDamageField
  boundaryConditionsClosed : D.boundaryConditions

theorem damage_evolution_closed_from_evidence
    {M : MaterialPackage} {S : StressFieldPackage M} {F : FractureEnergyPackage S}
    {C : CrackPathEnergyPackage F} (D : DamageVariablePackage C)
    (E : DamageEvolutionEvidence D) : DamageEvolutionClosed D := by
  exact And.intro E.damageEvolutionLawClosed
    (And.intro E.irreversibilityConstraintClosed
      (And.intro E.damageDrivingForceClosed
        (And.intro E.initialDamageFieldClosed E.boundaryConditionsClosed)))

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse