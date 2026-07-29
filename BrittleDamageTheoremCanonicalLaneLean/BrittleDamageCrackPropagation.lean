import BrittleDamageTheoremCanonicalLaneLean.BrittleDamageAdmissibleClass

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure CrackPropagationPackage (A : BrittleDamageAdmissibleClass) where
  stressIntensityFactor : ℝ
  fractureToughness : ℝ
  propagationCondition : stressIntensityFactor ≥ fractureToughness
  crackPathExtension : Set (A.object.material × A.object.material)

structure CrackPropagationEvidence {A : BrittleDamageAdmissibleClass} (C : CrackPropagationPackage A) where
  propagationConditionClosed : C.propagationCondition
  crackPathExtensionClosed : C.crackPathExtension ≠ ∅

def CrackPropagationClosed {A : BrittleDamageAdmissibleClass} (C : CrackPropagationPackage A) : Prop :=
  C.propagationCondition ∧ C.crackPathExtension ≠ ∅

theorem crack_propagation_closed_from_evidence {A : BrittleDamageAdmissibleClass} (C : CrackPropagationPackage A) (E : CrackPropagationEvidence C) :
    CrackPropagationClosed C := by
  exact And.intro E.propagationConditionClosed E.crackPathExtensionClosed

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse