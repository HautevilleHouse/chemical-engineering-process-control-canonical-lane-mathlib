import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure ReactorKineticsPackage where
  reactionMechanism : Type u
  rateExpressions : Type v
  massBalanceEquations : Prop
  energyBalanceEquations : Prop
  kineticParametersIdentified : Prop

structure ReactorKineticsEvidence (R : ReactorKineticsPackage) where
  massBalanceEquationsClosed : R.massBalanceEquations
  energyBalanceEquationsClosed : R.energyBalanceEquations
  kineticParametersIdentifiedClosed : R.kineticParametersIdentified

def ReactorKineticsClosed (R : ReactorKineticsPackage) : Prop :=
  R.massBalanceEquations ∧ R.energyBalanceEquations ∧ R.kineticParametersIdentified

theorem reactor_kinetics_closed_from_evidence (R : ReactorKineticsPackage) (E : ReactorKineticsEvidence R) : ReactorKineticsClosed R := by
  exact And.intro E.massBalanceEquationsClosed
    (And.intro E.energyBalanceEquationsClosed E.kineticParametersIdentifiedClosed)

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse