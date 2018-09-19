================
 Web Sémantique
================

Prise en main
=============

* Effectuez le tutoriel N3: http://n3.restdesc.org/
* puis `reprenons l'arbre généalogique des Simpsons`__.

__ ../_static/eye/simpsons.html


Notions importantes
===================

* URIs/IRIs pour identifier *globalement* les objets d'intérêt
  
* Principes du `Web de données <http://www.w3.org/DesignIssues/LinkedData.html>`_
  
  - Utiliser des IRIs pour nommer les choses (= ressources).
  - Utiliser des IRIs HTTP pour pouvoir obtenir des *représentations* de ces
    ressources.
  - Fournir ces représentations en utilisant des langages et des protocoles
    standards (RDF, SPARQL).
  - Inclure des liens pour permettre de découvrir de nouvelles ressources.

* Importance de RDF comme *modèle de données* plutôt que comme format

  - une syntaxe abstraite (graphe)
  - plusieurs syntaxes concrètes

* Plusieurs manières d'enrichir la sémantique

  - règles (comme en N3)
  - vocabulaires communs (exemple de ``owl:SymmetricProperty`` dans le tutoriel)

* Représentation de connaissances en OWL:
  `Protégé <http://protege.stanford.edu/>`_
