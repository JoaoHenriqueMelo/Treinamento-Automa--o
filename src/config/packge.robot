*** Settings ***
documentation    Arquivos de Mapeamentos de Arquivos e Bibliotecas

library          SeleniumLibrary
library          FakerLibrary                                         locale=pt_BR

resource         hooks.robot
variables        hooks.yaml

resource         ../auto/keywords/kws_webautomation.robot
resource         ../auto/elements/busca.robot
resource         ../auto/elements/home.robot
resource         ../auto/elements/cadastro.robot

variables        ../auto/data/busca.yaml
variables        ../auto/data/cadastro.yaml
