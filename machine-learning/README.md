# Roadmap d'apprentissage
## Compétences macro à développer 

1. Programmation 
2. Construie des applications
3. Analyser et visualiser des datas
4. Développer des compétence en statistiques et recherches

## les compétences à développer 

1. Python 
   1. Installer jupiter notebooks
   2. Apprendre les fondamentaux de la programmation
      1. Basic syntax (indentation rules, comments)
      2. Variables, math, if/else, loops, printing
      3. Data types (String, ints, floats, booleans, lists, dictionnaries)
      4. Function, classes/objects 
      5. Modules, packaging and importing 
   3. Pandas tutorials
      1. Numpy arrays
      2. Spreadsheet functionality 
      3. SQL database like joins
      4. Built-in stats & plotting functionality 
   4. Premier projet d'analyse de données
      1. Choisir une base de donnée (données provenant d'un domaine qui me plait)
      2. importer les données dans Panda, la nettoyer, uniformiser les unités, décider comment compléter la donnée manquante et outliers
      3. Mettre les différentes variables, les corrélations entre les variables
      4. Faire des hypothèses
      5. Les tester en créants plus de plots
      6. Mettre les résultats dans slide shows avec des graphes qui racontent une histoire
      7. Premier projet dans le portfolio
2. Math pour machine learning
   1. Apprendre le base des statistiques et probabilité (50h ou 100 si pas de bases)
      1. Ressources : Khan academy Statistics and probability course (free) 
      2. Revenir au projet développé précédemment et appliquer les concepts appris 
   2. Fondamentaux de l'algèbre linéaire (1/3 temps passé sur les statistiques)
      1. Comment travailler avec les vecteurs et matrices 
      2. Le fonctionnement des opérations et leur signification 
      3. Ressources : Ressources : Khan academy Linear Algebra course
   3. Calculus (ESP. Derivatives)
      1. Comprendre les dérivés (2 semaines si on a des bases)
      2. Comment elles vont aider dans l'optimisation des problèmes
      3. Comprendre comment les fonctions et leurs dérivés fonctionnenet 
      4. Régle de base de la différenciation comme la chaine rule
   4. Objectif : ne pas avoir un Phd en math mais se concentrer sur 
      1. Passer du temps sur des concepts statistiques
      2. Algèbre linéaire :  se concentrer sur l'apprentissage des outils comme 
         1. Opérations sur les matrix
         2. Comment obtenir la dérivée d'une fonction
3. The core ML concepts and Algorithms (c'est là où tout le monde fait fausse route)
   1. Objectifs 
      1. Passer plus de temps sur des algo simples
      2. Beaucoup de problèmes ne nécessitent pas d'algo trop complexes
      3. Apprendre des algo simples (100 heures) : 
         1. Linear regression ( la base d'algo plus complexes comme les réseaux de neuronnes)
         2. Logistic regression
         3. Decision trees
         4. Ensemble algo Random forest
         5. gardient boosting
         6. Ressources : 
            1. An introduction to Statistical learning
            2. ou regarder les vidéos youtube sur ce livre (ci-dessus) 
4. Scikit-Learn tutorial 
   1. La première librairie de ML au monde
   2. Objectifs
      1. Faire un Skilearn tutorial basique en 1 ou dux jours
      2. Utiliser Scikit learn pendant l'apprentissage des algo dans le cours de statistiques
      3. Le move de génie :
         1. Pour chaque algo appris : 
            1. L'implémenter from scratch (basic python)
            2. L'implémenter en utlisant scikit-learn en utilisant a toy dataset
            3. à la fin utiliser le scikit-learn et mes implémentations sur un vrai data set que j'aurai préparé moi même
5. Là ou les débutants sont piègés : 
   1. Tutorial hell 
   2. L'apprentissage vient des essais et des erreurs qui génèrent de la frustration
   3. Comment ne pas rester bloquer dans le "Tutorial hell"
      1. Faire deux ou trois tutos max par thématique
      2. Travailler sur un vrai projet
6. Mon premier projet ML
   1. Objectif 
      1. Utiliser les data sets préparés pendant l'apprentissage de Panda ou utiliser un autre data set
      2. Appliquer les concepts appri dans le chapitre sur Panda
      3. Obtenir un système ou l'entrée sont les datas préparées et la sortie une prédiction basée sur ces datas
      4. Structure : 
         1. Faire une recherche sur le domaine concerné par la data
         2. Regarder la data
         3. Faire des hypothèses à propos de ce qui impacte ma variable cible basée sur l'intuition concernant le domaine ou en faisant des corrélations and scatter plots of differents variables 
         4. Design new features based on my knoledge of the problem
         5. Start modeling by using simple algorithme (linear regression, logistic regression and decisions trees)
         6. Puis explorer des algo plus complexes : SVM, Random Force ou gradient boosting
         7. Noter que plus la complexité augumente, la précision augumente aussi 
         8. L'intérprétabilité baisse 
         9. Mon objectif est de trouver a sweet spot 
         10. ne pas oublier d'over fitting comme on augumente la complexité du model 
         11. Laisser les tests et validation a coté avant de commencer la modélisation et comparer les modèles
         12. Utiliser le test set à la fin
         13. Des fois même les algo les plus complexes deviennent mauvais quand on utilise le final test set
         14. Ce serait une bonne idée d'utiliser des data set qui ont été publiés dans des sites comme 
             1.  Kaggle 
             2.  Comme ça je compare l'accuracy de mes solutions à celles des autres
             3.  Comme ça j'ai une idée sur la performance de mes modèles 
             4.  il ne faut se frustrer si on est loin des autres user sur kaggle
             5.  Si je suis proche de l'accuracy je dois être content
             6.  il y'a des pro sur Kaggle donc pas trop comparable
7.  Je ne sais pas sur quoi bosser : 
    1.  Commencer avec un tuto
    2.  Ajouter/changer des features
    3.  Swap out the dataset
    4.  Try to break your code and then fix it 
8.  Collaborer et partager avec les autres 
    1.  Codding budy
    2.  Show projetcs to family and freinds 
    3.  Poster dans GitHub
    4.  Feedback from someone advanced (this will speed up my learning x10)
    5.  Participer à des hackatons
    6.  ecrire au gens avec des intérêts similaires sur Kaggle, Github, linkedIn, Reddit etc
9.  Advanced topics
    1.  Deep learning architectures
    2.  CNNs for computer vision
    3.  RNNs for sequential datas 
    4.  Transformers for NLP
    5.  Advanced optimosations techniques 
    6.  Moedl deployement strategies
    7.  Latest research papers 
    8.  Learn this by need and not by fomo 
10. Some do's and don'ts 
    1.  Don't 
        1.  Get stuck tutorial hell
        2.  don't try to memorize everything
        3.  Don't learn in isolation
        4.  Chase every new trend
        5.  don't copy past code without understanding
        6.  Don't try to learn every new fancy tool or paper 
    2.  Do's 
        1.  Buil real projects 
        2.  Focus on understanding 
        3.  Share your progress and join communities
        4.  Master fundamentals first
        5.  Implement from scratch
        6.  Learn by doing
