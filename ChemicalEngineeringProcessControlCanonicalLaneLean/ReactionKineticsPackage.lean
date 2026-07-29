import ChemicalEngineeringProcessControlCanonicalLaneLean.ChemicalProcessControlAdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Prop
  activationEnergy : Prop
  temperatureDependence : Prop
  equilibriumConstant : Prop
  catalystEffect : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw
  activationEnergyClosed : R.activationEnergy
  temperatureDependenceClosed : R.temperatureDependence
  equilibriumConstantClosed : R.equilibriumConstant
  catalystEffectClosed : R.catalystEffect

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.activationEnergy ∧ R.temperatureDependence ∧ R.equilibriumConstant ∧ R.catalystEffect

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.temperatureDependenceClosed
        (And.intro E.equilibriumConstantClosed E.catalystEffectClosed)))

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse