import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure FractureToughnessPackage where
  materialDomain : Type u
  criticalStressIntensity : Prop
  fractureEnergy : Prop
  microstructureEffects : Prop

structure FractureToughnessEvidence (F : FractureToughnessPackage) where
  criticalStressIntensityClosed : F.criticalStressIntensity
  fractureEnergyClosed : F.fractureEnergy
  microstructureEffectsClosed : F.microstructureEffects

def FractureToughnessClosed (F : FractureToughnessPackage) : Prop :=
  F.criticalStressIntensity ∧ F.fractureEnergy ∧ F.microstructureEffects

theorem fracture_toughness_closed_from_evidence (F : FractureToughnessPackage) (E : FractureToughnessEvidence F) :
    FractureToughnessClosed F := by
  exact And.intro E.criticalStressIntensityClosed (And.intro E.fractureEnergyClosed E.microstructureEffectsClosed)

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse