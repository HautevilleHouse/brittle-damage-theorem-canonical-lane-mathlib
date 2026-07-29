import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleDamageTheoremCanonicalLaneLean.BrittleDamageModel

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure CrackPropagationPackage (M : BrittleDamageMaterial) (Z : FractureProcessZone M) where
  crackLength : ℝ → ℝ
  propagationCriterion : Prop
  energyBalanceEquation : Prop
  propagationCriterionClosed : propagationCriterion
  energyBalanceEquationClosed : energyBalanceEquation

structure CrackPropagationEvidence {M : BrittleDamageMaterial} {Z : FractureProcessZone M} (C : CrackPropagationPackage M Z) where
  propagationCriterionClosed : C.propagationCriterion
  energyBalanceEquationClosed : C.energyBalanceEquation

def CrackPropagationClosed {M : BrittleDamageMaterial} {Z : FractureProcessZone M} (C : CrackPropagationPackage M Z) : Prop :=
  C.propagationCriterion ∧ C.energyBalanceEquation

theorem crack_propagation_closed_from_evidence
    {M : BrittleDamageMaterial} {Z : FractureProcessZone M} (C : CrackPropagationPackage M Z)
    (E : CrackPropagationEvidence C) : CrackPropagationClosed C := by
  exact And.intro E.propagationCriterionClosed E.energyBalanceEquationClosed

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse