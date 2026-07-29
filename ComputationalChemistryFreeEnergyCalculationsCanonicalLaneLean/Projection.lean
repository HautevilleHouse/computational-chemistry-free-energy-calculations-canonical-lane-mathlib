import HautevilleHouse.ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def freeEnergyProjection : Projection FreeEnergyState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem free_energy_projection_idempotent (x : FreeEnergyState) :
    freeEnergyProjection.toFun (freeEnergyProjection.toFun x) = freeEnergyProjection.toFun x := by
  exact freeEnergyProjection.idempotent x

end ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean
end HautevilleHouse