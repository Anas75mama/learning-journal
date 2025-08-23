// Les Tuples permettent de stocker plusieurs valeurs dans une seule. 
// Elles semblent similaires aux Array, mais 3 choses les différencient : 
// Première: On ne peut ni ajouter, ni supprimer des valeurs dans les Tuples
// Deuxième: On peut accéder aux valeurs d'une Tuple en utilisant un numéro d'index. ou tout simplement le nom de la valeur recherchée. Swift ne permettra pas l'accès  à des valeurs qui ne sont pas dans Tuple
// Troisième: On ne peut pas changer le type des valeurs stockées dans une Tuples. Celles ci garderons toujours le type initiale qu'on leurs a défini
// Exmple de Tuples:
var groupeEmployee = (directeur: "Lalo", adjointDirecteur: "Lala")

// On peut donc accéder aux éléments de Tuples : 
groupeEmployee.0
groupeEmployee.directeur

// On peut changer les valeurs dans Tuples mais pas le type qu'on leurs défini initialement

var groupeemployee = (directeur: "Popo", adjointDirecteur: 25) //🚫ça ne marchera pas car on essaie d'affecter un int à une variable définie au début comme String
// On ne peut pas modifier les valeurs de Tuple individuellement, on doit réecrire tout le Tuple
// Pour modifier des valeurs individuellement on peut utiliser les Structures
