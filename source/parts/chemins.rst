======================
 Recherche de chemins
======================

Plan de la première séance
==========================

* Notion de système à bases de connaissances
  
  + mécanismes de raisonnements génériques
  + utilisant des connaissances spécifiques au domaine

* Illustration : recherche de chemin dans un graphe

  + raisonnement : algorithme de Dijkstra, A*
  + connaissances : modélisation du problème sous forme de graphe
  + différentes fonctions de coût possibles
  + notion d'**heuristique**

* Exemples: http://aispace.org/search/

  + activer l'option Search Options > Pruning > Multiple-Path Pruning
  + choix des algorithmes :
    
    - Lowest Cost First (Dijkstra)
    - A*
  + exemples:
    
    - `grid1.xml <./_static/grid1.xml>`_
    - `labyrinthe.xml <./_static/labyrinthe.xml>`_
      (cas ou l'heuristique est ineffective, voire nocive)

* Autre démo interactive: https://qiao.github.io/PathFinding.js/visual/

Plan de la deuxième séance
==========================

* Notion d'**espace d'états** :
  représentation des connaissances sur un problème quelconque
  (pas nécessairement "géographique")

  - `problème du loup, de la chèvre et du chou`__:
    `f123.xml <./_static/f123.xml>`_
    (`spoiler <./_static/f123-readable.xml>`_)

  - `tours de Hanoi`__:
    `hanoi.xml <./_static/f123.xml>`_
    (Wikipedia `fait allusion`__ à l'espace d'états de ce problème)
    
.. __: https://en.wikipedia.org/wiki/Fox,_goose_and_bag_of_beans_puzzle
.. __: https://fr.wikipedia.org/wiki/Tours_de_Hano%C3%AF
.. __: https://fr.wikipedia.org/wiki/Tours_de_Hano%C3%AF#Tours_de_Hano.C3.AF_et_Triangle_de_Pascal

