import canonicalLaneMathlib.AdmissibleClass

/-!
# Elastic Plate Bridge Package

This module defines the elastic plate bridge structure for the Brittle Damage Theorem.
The plate carries a traction-free crack set, and the bridge condition records whether
the crack satisfies the energetic and stress-based admissibility criteria.
-/

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure ElasticPlatePackage where
  domain : Type u
  crackSet : Set domain
  elasticityTensor : Type v
  storedEnergyFunctional : Type w
  tractionFreeBoundary : Prop
  energeticAdmissibility : Prop
  stressAdmissibility : Prop

structure ElasticPlateBridge (A : AdmissibleClass) where
  plate : ElasticPlatePackage
  crackSetClosed : Plate.crackSet is closed
  crackSetClosedTerm : crackSetClosed
  tractionFreeBoundaryClosed : plate.tractionFreeBoundary
  energeticAdmissibilityClosed : plate.energeticAdmissibility
  stressAdmissibilityClosed : plate.stressAdmissibility

def ElasticPlateBridgeClosed (A : AdmissibleClass) (B : ElasticPlateBridge A) : Prop :=
  plate.tractionFreeBoundary ∧ plate.energeticAdmissibility ∧ plate.stressAdmissibility

theorem plate_bridge_closed_from_evidence (A : AdmissibleClass) (B : ElasticPlateBridge A) :
    ElasticPlateBridgeClosed A B := by
  exact And.intro B.tractionFreeBoundaryClosed
    (And.intro B.energeticAdmissibilityClosed B.stressAdmissibilityClosed)

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse