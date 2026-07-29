import HautevilleHouse.ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FreeEnergyState where
  thermodynamicParameter : ℝ
  potential : ℝ
  freeEnergy : ℝ

def computeFreeEnergy (state : FreeEnergyState) : ℝ :=
  state.freeEnergy

structure FreeEnergyAdmittedObject where
  state : FreeEnergyState
  projectedLanguage : Set ℝ
  solver : DecisionProcedure

end ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean
end HautevilleHouse