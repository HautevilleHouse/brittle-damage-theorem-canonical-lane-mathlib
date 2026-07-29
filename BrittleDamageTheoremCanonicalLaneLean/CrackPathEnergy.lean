import BrittleDamageTheoremCanonicalLaneLean.MaterialAdmissible

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

structure CrackPathEnergyPackage {M : MaterialPackage}
    {S : StressFieldPackage M} (F : FractureEnergyPackage S) where
  crackSurfaceArea : Prop
  energyReleaseRate : Prop
  crackPathIrreversibility : Prop

def CrackPathEnergyClosed {M : MaterialPackage}
    {S : StressFieldPackage M} {F : FractureEnergyPackage S}
    (C : CrackPathEnergyPackage F) : Prop :=
  C.crackSurfaceArea ∧ C.energyReleaseRate ∧ C.crackPathIrreversibility

structure CrackPathEnergyEvidence {M : MaterialPackage}
    {S : StressFieldPackage M} {F : FractureEnergyPackage S}
    (C : CrackPathEnergyPackage F) where
  crackSurfaceAreaClosed : C.crackSurfaceArea
  energyReleaseRateClosed : C.energyReleaseRate
  crackPathIrreversibilityClosed : C.crackPathIrreversibility

theorem crack_path_energy_closed_from_evidence
    {M : MaterialPackage} {S : StressFieldPackage M} {F : FractureEnergyPackage S}
    (C : CrackPathEnergyPackage F) (E : CrackPathEnergyEvidence C) :
    CrackPathEnergyClosed C := by
  exact And.intro E.crackSurfaceAreaClosed
    (And.intro E.energyReleaseRateClosed E.crackPathIrreversibilityClosed)

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse