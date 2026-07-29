import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean

structure LambdaSchedule where
  lambdaValues : List Float
  couplingParameter : Float

def thermodynamicIntegrationBridge (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage

theorem thermodynamic_integration_bridge_from_admissible_class (A : AdmissibleClass) :
    thermodynamicIntegrationBridge A := by
  exact A.solverDecidesProjectedLanguage

end ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean
end HautevilleHouse