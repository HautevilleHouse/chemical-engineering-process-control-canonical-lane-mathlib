import ChemicalEngineeringProcessControlCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "ChemicalEngineeringProcessControl",
    theoremName := "Process Control Bridge Theorem",
    theoremObject := "ChemicalProcessControlAdmittedObject",
    classicalBoundary := "closed-loop stability under disturbances",
    constrainedStatement := "For any admissible chemical process control system, the bridge is closed and the gate is closed.",
    carriedRemainder := "The full process dynamics remain outside the constrained closure."
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "ChemicalEngineeringProcessControl" := by
  rfl

theorem theorem_statement_theorem_name_checked :
    sourceTheoremStatement.theoremName = "Process Control Bridge Theorem" := by
  rfl

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse