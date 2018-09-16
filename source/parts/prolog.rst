========
 Prolog
========

.. highlight:: prolog

Pour pratiquer : http://swish.swi-prolog.org/

Notions de bases
================

* constante, variable, prédicat

* fait ::

    homme(pac).
    matiere(ia).
    enseigne(pac, ia).
    enseigne(pac, algo).
    titre(ia, "Introduction à l'IA").
    titre(algo, "Algorithmique").

* requête ::

    ?- matiere(X)
    ?- enseigne(X, algo)
    ?- enseigne(pac, Y), titre(Y, Z)

* règle ::

    matiere(X) :- enseigne(_Y, X) .

* exemples plus sophistiqué :

  + `Sudoku <../_static/sudoku.pl>`_
  + Dans `l'application de recherche de chemin <http://aispace.org/search/>`_,
    menu Edit > View Prolog Code

.. _exo_simpsons:

Arbre généalogique
==================

1. En utilisant exclusivement deux prédicats unaires ``homme`` et ``femme``,
   et un prédicat binaire ``parent``,
   représentez l'arbre généalogique des Simpsons, d'après la figure ci-dessous.

Pour démarrer::

  homme(bart).
  homme(homer).
  femme(marge).
  parent(bart,homer).
  parent(bart,marge).

.. warning::

   N'utilisez pas de majuscule pour les noms propres,
   Prolog les considérerait comme des variables...

2. Ajoutez ensuite des règles permettant de déduire d'autres prédicats
   (tels que ``père``, ``frèreOuSoeur``...),
   afin d'arriver à déduire : ``cousin(ling, bart)``.

Pour démarrer::

  père(X,Y) :- parent(X,Y), homme(Y).

3. Ajoutez enfin des règles permettant de déduire un prédicat binaire `ancêtre`.
   Par exemple, pour `bart`, les faits suivants doivent être déduits ::

     ancêtre(bart, homer).
     ancêtre(bart, marge).
     ancêtre(bart, abraham).
     ancêtre(bart, mona).
     ancêtre(bart, clancy).
     ancêtre(bart, jackie).


.. figure:: ../_static/simpsons.*

   L'arbre généalogique des Simpsons
