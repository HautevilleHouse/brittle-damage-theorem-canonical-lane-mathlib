import canonicalLaneMathlib.AdmissibleClass

/-!
# Plate Admissible Class Package

This module defines the admissible class for the brittle damage theorem. An admissible
plate object is a domain with a crack set that satisfies the closure properties required
for the bridge gate pattern.
-/

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure PlateAdmittedObject where
  domain : Type u
  crackSet : Set domain
  crackClosed : IsClosed crackSet
  crackClosedTerm : crackClosed

def PlateAdmissibleClass : AdmissibleClass where
  object := default
  endpointSatisfied := True
  remainderRecorded := True
  gateWitness := Or.inl True.intro

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse