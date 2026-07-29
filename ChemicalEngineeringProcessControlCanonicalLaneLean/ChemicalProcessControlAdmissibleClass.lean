import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure ProcessControlAdmittedObject where
  process : Type
  setpoint : Prop
  measuredVariable : Prop
  manipulatedVariable : Prop
  disturbance : Prop
  pidyield : Prop
  conclusion : pidyield

structure AdmissibleClass where
  object : ProcessControlAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ProcessControlWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def ProcessControlWitnessClosed (O : ProcessControlAdmittedObject) : Prop :=
  O.pidyield

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse