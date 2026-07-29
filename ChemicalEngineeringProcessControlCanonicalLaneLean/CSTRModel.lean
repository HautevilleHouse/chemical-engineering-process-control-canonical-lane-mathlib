import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringProcessControlCanonicalLaneLean.ReactorKinetics

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure CSTRState where
  volume : ℝ
  inletConcentration : ℝ
  outletConcentration : ℝ
  temperature : ℝ
  energyBalance : Prop
  energyBalanceTerm : energyBalance

structure CSTRModelPackage (R : ReactionKineticsPackage) where
  state : CSTRState
  reactionRate : ℝ
  dynamicEquations : Prop
  steadyStateCondition : Prop
  dynamicEquationsTerm : dynamicEquations
  steadyStateConditionTerm : steadyStateCondition

structure CSTRModelEvidence {R : ReactionKineticsPackage}
    (C : CSTRModelPackage R) where
  dynamicEquationsClosed : C.dynamicEquations
  steadyStateConditionClosed : C.steadyStateCondition

def CSTRModelClosed {R : ReactionKineticsPackage}
    (C : CSTRModelPackage R) : Prop :=
  C.dynamicEquations ∧ C.steadyStateCondition

theorem cstr_model_closed_from_evidence {R : ReactionKineticsPackage}
    (C : CSTRModelPackage R) (E : CSTRModelEvidence C) :
    CSTRModelClosed C := by
  exact And.intro E.dynamicEquationsClosed E.steadyStateConditionClosed

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse