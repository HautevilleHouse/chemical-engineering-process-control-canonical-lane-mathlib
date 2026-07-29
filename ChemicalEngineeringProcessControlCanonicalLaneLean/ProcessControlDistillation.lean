import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessControlCanonicalLaneLean

structure DistillationColumnPackage where
  trayHydraulics : Prop
  vaporLiquidEquilibrium : Prop
  productCompositionControl : Prop
  energyBalanceClosed : Prop

def DistillationColumnPackageClosed (D : DistillationColumnPackage) : Prop :=
  D.trayHydraulics ∧ D.vaporLiquidEquilibrium ∧ D.productCompositionControl ∧ D.energyBalanceClosed

end ChemicalEngineeringProcessControlCanonicalLaneLean
end HautevilleHouse