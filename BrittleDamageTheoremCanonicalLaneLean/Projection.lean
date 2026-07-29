import BrittleDamageTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def brittleDamageProjection : Projection BrittleDamageEndgameState := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem brittle_damage_projection_idempotent (x : BrittleDamageEndgameState) :
    brittleDamageProjection.toFun (brittleDamageProjection.toFun x) = brittleDamageProjection.toFun x := by
  exact brittleDamageProjection.idempotent x

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse