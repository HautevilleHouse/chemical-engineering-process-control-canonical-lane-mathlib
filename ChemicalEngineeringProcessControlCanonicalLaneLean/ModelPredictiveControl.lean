import ChemicalEngineeringProcessControlCanonicalLaneLean.FeedbackControl

/-!
# Model Predictive Control Package
-/

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure ModelPredictiveControlPackage {G : RiemannianCurvaturePackage}
    {F : RicciFlowPDEPackage G} {S : ProcessDynamicsPackage F}
    (C : FeedbackControlPackage S) where
  optimizationHorizon : Prop
  recedingHorizonImplementation : Prop
  constraintsHandling : Prop
  stabilityGuarantee : Prop
  computationalFeasibility : Prop

structure ModelPredictiveControlEvidence {G : RiemannianCurvaturePackage}
    {F : RicciFlowPDEPackage G} {S : ProcessDynamicsPackage F}
    {C : FeedbackControlPackage S} (M : ModelPredictiveControlPackage C) where
  optimizationHorizonClosed : M.optimizationHorizon
  recedingHorizonImplementationClosed : M.recedingHorizonImplementation
  constraintsHandlingClosed : M.constraintsHandling
  stabilityGuaranteeClosed : M.stabilityGuarantee
  computationalFeasibilityClosed : M.computationalFeasibility

def ModelPredictiveControlClosed {G : RiemannianCurvaturePackage}
    {F : RicciFlowPDEPackage G} {S : ProcessDynamicsPackage F}
    {C : FeedbackControlPackage S} (M : ModelPredictiveControlPackage C) : Prop :=
  M.optimizationHorizon ∧ M.recedingHorizonImplementation ∧
  M.constraintsHandling ∧ M.stabilityGuarantee ∧ M.computationalFeasibility

theorem model_predictive_control_closed_from_evidence
    {G : RiemannianCurvaturePackage} {F : RicciFlowPDEPackage G}
    {S : ProcessDynamicsPackage F} {C : FeedbackControlPackage S}
    (M : ModelPredictiveControlPackage C) (E : ModelPredictiveControlEvidence M) :
    ModelPredictiveControlClosed M := by
  exact And.intro E.optimizationHorizonClosed
    (And.intro E.recedingHorizonImplementationClosed
      (And.intro E.constraintsHandlingClosed
        (And.intro E.stabilityGuaranteeClosed E.computationalFeasibilityClosed)))

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse