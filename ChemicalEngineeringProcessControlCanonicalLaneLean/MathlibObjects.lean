import ChemicalEngineeringProcessControlCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ProcessControlSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ProcessControlAdmittedObject where
  space : ProcessControlSpace
  closedLoopStable : Prop
  setpointTracking : Prop
  disturbanceRejectionModel : Type
  disturbanceRejectionTopology : TopologicalSpace disturbanceRejectionModel
  robustPerformance : Prop
  conclusion : robustPerformance

structure ProcessControlEndgameState where
  object : ProcessControlAdmittedObject

def ProcessControlWitnessClosed (O : ProcessControlAdmittedObject) : Prop :=
  O.robustPerformance

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse