import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure ReactorPackage where
  reactorModel : Type u
  temperatureControl : Prop
  concentrationDynamics : Prop
  stabilityMargin : Prop
  controlInputBounds : Prop

def ReactorPackageClosed (R : ReactorPackage) : Prop :=
  R.temperatureControl ∧ R.concentrationDynamics ∧ R.stabilityMargin ∧ R.controlInputBounds

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse