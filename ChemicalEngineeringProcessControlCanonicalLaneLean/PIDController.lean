import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure PIDGains where
  proportional : ℝ
  integral : ℝ
  derivative : ℝ
  positiveGains : proportional > 0 ∧ integral > 0 ∧ derivative > 0
  positiveGainsTerm : positiveGains

structure PIDControllerPackage where
  gains : PIDGains
  setpoint : ℝ
  processVariable : ℝ
  controlSignal : ℝ
  controlLaw : controlSignal = gains.proportional * (setpoint - processVariable) +
    gains.integral * (∫ t, (setpoint - processVariable) ∂ t) +
    gains.derivative * (derivative (setpoint - processVariable))
  controlLawTerm : controlLaw
  stabilityMargin : Prop
  stabilityMarginTerm : stabilityMargin

structure PIDControllerEvidence (P : PIDControllerPackage) where
  controlLawClosed : P.controlLaw
  stabilityMarginClosed : P.stabilityMargin

def PIDControllerClosed (P : PIDControllerPackage) : Prop :=
  P.controlLaw ∧ P.stabilityMargin

theorem pid_controller_closed_from_evidence (P : PIDControllerPackage)
    (E : PIDControllerEvidence P) : PIDControllerClosed P := by
  exact And.intro E.controlLawClosed E.stabilityMarginClosed

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse