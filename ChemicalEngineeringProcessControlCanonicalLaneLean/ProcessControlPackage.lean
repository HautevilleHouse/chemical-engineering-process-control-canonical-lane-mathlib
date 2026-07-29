import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure ProcessControlPackage where
  feedbackLaw : Prop
  stabilityCondition : Prop
  disturbanceRejection : Prop
  optimalControl : Prop

structure ProcessControlEvidence (P : ProcessControlPackage) where
  feedbackLawClosed : P.feedbackLaw
  stabilityConditionClosed : P.stabilityCondition
  disturbanceRejectionClosed : P.disturbanceRejection
  optimalControlClosed : P.optimalControl

def ProcessControlClosed (P : ProcessControlPackage) : Prop :=
  P.feedbackLaw ∧ P.stabilityCondition ∧ P.disturbanceRejection ∧ P.optimalControl

theorem process_control_closed_from_evidence (P : ProcessControlPackage) (E : ProcessControlEvidence P) : ProcessControlClosed P := by
  exact And.intro E.feedbackLawClosed (And.intro E.stabilityConditionClosed (And.intro E.disturbanceRejectionClosed E.optimalControlClosed))

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse