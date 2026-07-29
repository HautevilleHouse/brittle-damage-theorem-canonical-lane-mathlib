import BrittleDamageTheoremCanonicalLaneLean.MaterialPackage

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure StressFieldPackage (M : MaterialPackage) where
  stressTensor : Type u
  equilibriumEquation : Prop
  constitutiveLaw : Prop
  boundaryTractions : Prop
  stressRegularity : Prop

def StressFieldClosed {M : MaterialPackage} (S : StressFieldPackage M) : Prop :=
  S.equilibriumEquation ∧ S.constitutiveLaw ∧ S.boundaryTractions ∧ S.stressRegularity

structure StressFieldEvidence {M : MaterialPackage} (S : StressFieldPackage M) where
  equilibriumEquationClosed : S.equilibriumEquation
  constitutiveLawClosed : S.constitutiveLaw
  boundaryTractionsClosed : S.boundaryTractions
  stressRegularityClosed : S.stressRegularity

theorem stress_field_closed_from_evidence
    {M : MaterialPackage} (S : StressFieldPackage M) (E : StressFieldEvidence S) :
    StressFieldClosed S := by
  exact And.intro E.equilibriumEquationClosed
    (And.intro E.constitutiveLawClosed
      (And.intro E.boundaryTractionsClosed E.stressRegularityClosed))

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse