import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure LinearElasticFracturePackage where
  elasticBody : Type u
  displacementField : Type v
  equilibriumEquations : Prop
  constitutiveLaw : Prop
  boundaryConditions : Prop

structure LinearElasticFractureEvidence (L : LinearElasticFracturePackage) where
  equilibriumEquationsClosed : L.equilibriumEquations
  constitutiveLawClosed : L.constitutiveLaw
  boundaryConditionsClosed : L.boundaryConditions

def LinearElasticFractureClosed (L : LinearElasticFracturePackage) : Prop :=
  L.equilibriumEquations ∧ L.constitutiveLaw ∧ L.boundaryConditions

theorem linear_elastic_fracture_closed_from_evidence (L : LinearElasticFracturePackage) (E : LinearElasticFractureEvidence L) :
    LinearElasticFractureClosed L := by
  exact And.intro E.equilibriumEquationsClosed (And.intro E.constitutiveLawClosed E.boundaryConditionsClosed)

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse