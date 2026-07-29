import canonicalLaneMathlib.AdmissibleClass
import ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean.ThermodynamicIntegration
import ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean.BennettAcceptanceRatio

namespace HautevilleHouse
namespace ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean

def ConstrainedFreeEnergyClosure (A : AdmissibleClass) : Prop :=
  thermodynamicIntegrationBridge A ∧ bennettAcceptanceRatioGate A

theorem constrained_free_energy_endgame (A : AdmissibleClass) :
    ConstrainedFreeEnergyClosure A := by
  exact And.intro (thermodynamic_integration_bridge_from_admissible_class A)
                    (bennett_acceptance_ratio_gate_from_admissible_class A)

end ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean
end HautevilleHouse