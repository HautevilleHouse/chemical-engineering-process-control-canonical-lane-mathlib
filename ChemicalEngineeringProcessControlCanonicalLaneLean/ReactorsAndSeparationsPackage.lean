import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure ReactorsAndSeparationsPackage where
  reactorDesign : Prop
  separationEfficiency : Prop
  processSynthesis : Prop
  heatIntegration : Prop

structure ReactorsAndSeparationsEvidence (R : ReactorsAndSeparationsPackage) where
  reactorDesignClosed : R.reactorDesign
  separationEfficiencyClosed : R.separationEfficiency
  processSynthesisClosed : R.processSynthesis
  heatIntegrationClosed : R.heatIntegration

def ReactorsAndSeparationsClosed (R : ReactorsAndSeparationsPackage) : Prop :=
  R.reactorDesign ∧ R.separationEfficiency ∧ R.processSynthesis ∧ R.heatIntegration

theorem reactors_and_separations_closed_from_evidence (R : ReactorsAndSeparationsPackage) (E : ReactorsAndSeparationsEvidence R) : ReactorsAndSeparationsClosed R := by
  exact And.intro E.reactorDesignClosed (And.intro E.separationEfficiencyClosed (And.intro E.processSynthesisClosed E.heatIntegrationClosed))

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse