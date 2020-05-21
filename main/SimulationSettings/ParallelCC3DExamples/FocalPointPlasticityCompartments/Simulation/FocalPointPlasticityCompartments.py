from cc3d import CompuCellSetup

from FocalPointPlasticityCompartmentsSteppables import FocalPointPlasticityCompartmentsSteppable

CompuCellSetup.register_steppable(steppable=FocalPointPlasticityCompartmentsSteppable(frequency=1))

CompuCellSetup.run()