import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ReactorKineticsClosed (A.object : ReactorKineticsPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse