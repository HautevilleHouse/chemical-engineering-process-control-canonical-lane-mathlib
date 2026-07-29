import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure TransportPhenomenaPackage where
  momentumBalance : Prop
  energyBalance : Prop
  massBalance : Prop
  constitutiveRelations : Prop

structure TransportPhenomenaEvidence (T : TransportPhenomenaPackage) where
  momentumBalanceClosed : T.momentumBalance
  energyBalanceClosed : T.energyBalance
  massBalanceClosed : T.massBalance
  constitutiveRelationsClosed : T.constitutiveRelations

def TransportPhenomenaClosed (T : TransportPhenomenaPackage) : Prop :=
  T.momentumBalance ∧ T.energyBalance ∧ T.massBalance ∧ T.constitutiveRelations

theorem transport_phenomena_closed_from_evidence (T : TransportPhenomenaPackage) (E : TransportPhenomenaEvidence T) : TransportPhenomenaClosed T := by
  exact And.intro E.momentumBalanceClosed (And.intro E.energyBalanceClosed (And.intro E.massBalanceClosed E.constitutiveRelationsClosed))

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse