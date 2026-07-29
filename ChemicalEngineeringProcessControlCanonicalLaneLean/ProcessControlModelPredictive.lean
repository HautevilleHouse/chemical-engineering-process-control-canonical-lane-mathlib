import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure ModelPredictiveControlPackage where
  predictionHorizon : Prop
  costFunctionDefined : Prop
  constraintSatisfaction : Prop
  recedingHorizonImplementation : Prop

def ModelPredictiveControlPackageClosed (M : ModelPredictiveControlPackage) : Prop :=
  M.predictionHorizon ∧ M.costFunctionDefined ∧ M.constraintSatisfaction ∧ M.recedingHorizonImplementation

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse