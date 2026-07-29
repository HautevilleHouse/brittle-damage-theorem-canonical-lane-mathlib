import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure StressIntensityFactorPackage where
  crackGeometry : Type u
  loadingMode : Type v
  stressFieldAsymptotics : Prop
  kisValue : Prop

structure StressIntensityFactorEvidence (S : StressIntensityFactorPackage) where
  stressFieldAsymptoticsClosed : S.stressFieldAsymptotics
  kisValueClosed : S.kisValue

def StressIntensityFactorClosed (S : StressIntensityFactorPackage) : Prop :=
  S.stressFieldAsymptotics ∧ S.kisValue

theorem stress_intensity_factor_closed_from_evidence (S : StressIntensityFactorPackage) (E : StressIntensityFactorEvidence S) :
    StressIntensityFactorClosed S := by
  exact And.intro E.stressFieldAsymptoticsClosed E.kisValueClosed

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse