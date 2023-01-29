[![Workflow sushi/test/Publish](https://github.com/ansforge/ROR_ressource-conformance/actions/workflows/fhir-worklows.yml/badge.svg?branch=FSHTransformation2.4)](https://github.com/ansforge/ROR_ressource-conformance/actions/workflows/fhir-worklows.yml)
# Description
Ceci est exemple d'ImplementationGuide très simplifié qui servira de template pour les prochains développement d'IGs. Pour créer un nouvel IG, il suffit de forker ce document, puis de faire les modifications :

1. Lors de la phase de mise en place :
* sushi-config.yaml
* package-list.json
* ig.ini

2. Lors de la phase de documentation :
* input/fsh (liste des profils, instances, extensions, ... générés avec la [grammaire FSH](https://build.fhir.org/ig/HL7/fhir-shorthand/))
* input/pagecontent (liste des pages contenant la docummentation narrative au format markdown.

Ce sample IG a été créé à partir du sample-ig fhir : https://github.com/FHIR/sample-ig.

# IG publisher

Après avoir créé les profil et mis à jour sushi-config, il y a une démarche à suivre pour générer la page web de l'IG. Celle-ci est à suivre dans le [wiki de ce repo](https://github.com/ansforge/FIG_ans-ig-sample/wiki).

# CI/CD
Les pipelines mis de ce repository permettent : 
* Executer  Sushi
* Faire les tests avec le validator_cli
* Publier les pages :  https://ansforge.github.io/ROR_ressource-conformance/ig/

![image](https://user-images.githubusercontent.com/101335975/215342980-61686171-e3f8-40c5-865c-efdfc3dd52b4.png)



## Acronymes
FIG : FHIR Implementation Guide
