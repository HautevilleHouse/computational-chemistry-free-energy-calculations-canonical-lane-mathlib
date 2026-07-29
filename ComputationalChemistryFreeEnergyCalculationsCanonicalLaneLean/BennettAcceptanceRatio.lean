import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean

structure BennettOptimization where
  forwardWork : List Float
  reverseWork : List Float
  freeEnergyDifference : Float

def bennettAcceptanceRatioGate (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bennett_acceptance_ratio_gate_from_admissible_class (A : AdmissibleClass) :
    bennettAcceptanceRatioGate A := by
  exact A.gateWitness

end ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean
end HautevilleHouse