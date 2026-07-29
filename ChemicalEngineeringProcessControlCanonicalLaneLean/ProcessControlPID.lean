import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure PIDControllerPackage where
  proportionalGain : Prop
  integralAction : Prop
  derivativeAction : Prop
  closedLoopStability : Prop

def PIDControllerPackageClosed (P : PIDControllerPackage) : Prop :=
  P.proportionalGain ∧ P.integralAction ∧ P.derivativeAction ∧ P.closedLoopStability

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse