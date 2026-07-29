import ChemicalEngineeringProcessControlCanonicalLaneLean.TransferFunctionModelPackage

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure ControllerTuningPackage where
  proportionalGain : Prop
  integralTime : Prop
  derivativeTime : Prop
  stabilityMargin : Prop
  setpointTracking : Prop

structure ControllerTuningEvidence (C : ControllerTuningPackage) where
  proportionalGainClosed : C.proportionalGain
  integralTimeClosed : C.integralTime
  derivativeTimeClosed : C.derivativeTime
  stabilityMarginClosed : C.stabilityMargin
  setpointTrackingClosed : C.setpointTracking

def ControllerTuningClosed (C : ControllerTuningPackage) : Prop :=
  C.proportionalGain ∧ C.integralTime ∧ C.derivativeTime ∧ C.stabilityMargin ∧ C.setpointTracking

theorem controller_tuning_closed_from_evidence (C : ControllerTuningPackage)
    (E : ControllerTuningEvidence C) : ControllerTuningClosed C := by
  exact And.intro E.proportionalGainClosed
    (And.intro E.integralTimeClosed
      (And.intro E.derivativeTimeClosed
        (And.intro E.stabilityMarginClosed E.setpointTrackingClosed)))

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse