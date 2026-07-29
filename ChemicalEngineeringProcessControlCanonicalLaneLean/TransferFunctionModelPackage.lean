import ChemicalEngineeringProcessControlCanonicalLaneLean.ReactionKineticsPackage

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure TransferFunctionModelPackage where
  laplaceTransform : Prop
  processGain : Prop
  timeConstant : Prop
  deadTime : Prop
  orderOfSystem : Prop

structure TransferFunctionModelEvidence (T : TransferFunctionModelPackage) where
  laplaceTransformClosed : T.laplaceTransform
  processGainClosed : T.processGain
  timeConstantClosed : T.timeConstant
  deadTimeClosed : T.deadTime
  orderOfSystemClosed : T.orderOfSystem

def TransferFunctionModelClosed (T : TransferFunctionModelPackage) : Prop :=
  T.laplaceTransform ∧ T.processGain ∧ T.timeConstant ∧ T.deadTime ∧ T.orderOfSystem

theorem transfer_function_model_closed_from_evidence (T : TransferFunctionModelPackage)
    (E : TransferFunctionModelEvidence T) : TransferFunctionModelClosed T := by
  exact And.intro E.laplaceTransformClosed
    (And.intro E.processGainClosed
      (And.intro E.timeConstantClosed
        (And.intro E.deadTimeClosed E.orderOfSystemClosed)))

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse