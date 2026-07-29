import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringProcessControlCanonicalLaneLean.ProcessControlBridge
import ChemicalEngineeringProcessControlCanonicalLaneLean.ProcessControlGate

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

def ConstrainedProcessControlClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_process_control_endgame (A : AdmissibleClass) : ConstrainedProcessControlClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse