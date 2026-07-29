import ChemicalEngineeringProcessControlCanonicalLaneLean.ProcessDynamics

/-!
# Feedback Control Package
-/

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure FeedbackControlPackage {G : RiemannianCurvaturePackage}
    {F : RicciFlowPDEPackage G} (S : ProcessDynamicsPackage F) where
  controllerDesign : Type u
  closedLoopTransfer : Prop
  stabilityMargins : Prop
  performanceSpecifications : Prop
  robustStability : Prop
  disturbanceAttenuation : Prop

structure FeedbackControlEvidence {G : RiemannianCurvaturePackage}
    {F : RicciFlowPDEPackage G} {S : ProcessDynamicsPackage F}
    (C : FeedbackControlPackage S) where
  closedLoopTransferClosed : C.closedLoopTransfer
  stabilityMarginsClosed : C.stabilityMargins
  performanceSpecificationsClosed : C.performanceSpecifications
  robustStabilityClosed : C.robustStability
  disturbanceAttenuationClosed : C.disturbanceAttenuation

def FeedbackControlClosed {G : RiemannianCurvaturePackage}
    {F : RicciFlowPDEPackage G} {S : ProcessDynamicsPackage F}
    (C : FeedbackControlPackage S) : Prop :=
  C.closedLoopTransfer ∧ C.stabilityMargins ∧
  C.performanceSpecifications ∧ C.robustStability ∧ C.disturbanceAttenuation

theorem feedback_control_closed_from_evidence
    {G : RiemannianCurvaturePackage} {F : RicciFlowPDEPackage G}
    {S : ProcessDynamicsPackage F} (C : FeedbackControlPackage S)
    (E : FeedbackControlEvidence C) : FeedbackControlClosed C := by
  exact And.intro E.closedLoopTransferClosed
    (And.intro E.stabilityMarginsClosed
      (And.intro E.performanceSpecificationsClosed
        (And.intro E.robustStabilityClosed E.disturbanceAttenuationClosed)))

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse