import BrittleDamageTheoremCanonicalLaneLean.BrittleDamageProjection

namespace HautevilleHouse
namespace BrittleDamageTheoremCanonicalLaneLean

def bridgeClosed (A : BrittleDamageAdmissibleClass) : Prop :=
  fractureCriterionClosed A.object

theorem bridge_from_admissible_class (A : BrittleDamageAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BrittleDamageTheoremCanonicalLaneLean
end HautevilleHouse