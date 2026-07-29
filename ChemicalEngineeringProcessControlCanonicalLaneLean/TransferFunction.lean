import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure TransferFunction where
  numerator : Polynomial ℝ
  denominator : Polynomial ℝ
  proper : Polynomial.degree numerator ≤ Polynomial.degree denominator
  properTerm : proper

structure SystemDynamicsPackage where
  transferFunction : TransferFunction
  impulseResponse : ℝ → ℝ
  stepResponse : ℝ → ℝ
  frequencyResponse : ℝ → ℂ
  stabilityCriterion : Prop
  stabilityCriterionTerm : stabilityCriterion

structure SystemDynamicsEvidence (S : SystemDynamicsPackage) where
  stabilityCriterionClosed : S.stabilityCriterion

def SystemDynamicsClosed (S : SystemDynamicsPackage) : Prop :=
  S.stabilityCriterion

theorem system_dynamics_closed_from_evidence (S : SystemDynamicsPackage)
    (E : SystemDynamicsEvidence S) : SystemDynamicsClosed S := by
  exact E.stabilityCriterionClosed

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse