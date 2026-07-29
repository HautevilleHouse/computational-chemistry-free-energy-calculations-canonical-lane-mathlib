import HautevilleHouse.ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean

structure AdmissibleClass where
  lane : FreeEnergyAdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalChemistryFreeEnergyCalculationsCanonicalLaneLean
end HautevilleHouse