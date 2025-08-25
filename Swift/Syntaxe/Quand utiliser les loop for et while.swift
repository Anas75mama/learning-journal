// La boucle for permet d'executer une instruction un certain nombre de fois en fonction d'une intervalle définie ou en balayant les éléments dans une liste Array. 

// La boucle while, permet d'executer une instruction tant qu'une condition reste vraie. L'exécution s'arrête quand la condition devient fausse.
 
//   Quelques cas où l'exécution de l'instruction dans la boucle while peut s'arrêter : 

//   L'utlisateur demande d'arrêter en appuyant sur un boutton 
//   Un serveur nous demande d'arrêter l'exécution du code 
//   On a trouvé la réponse que nous cherchions
//   On a généré assez de données

// Le principe de DRY consiste à ne pas répecter inutilement du code = don't repeat yourself
// le code ci-dessous permet de s'assurer que shuffled() n'enverra jamais la liste à modifier dans son ordre initial 

let numbers = [1, 2, 3, 4, 5]
var random = numbers.shuffled() 

while numbers == random {
 random = numbers.shuffled()
}

// Dans ce code, on repète deux fois shuffled() ce qui n'est pas grave pour un "loop body" aussi simple que numbers.shufled(), mais quand on aura plusieurs instructions le code deviendra moins optimial
// C'est là ou la boucle repeat va intervenir pour optimiser notre code

let numbers = [1, 2, 3, 4, 5 ]
var random : [Int]

repeat {
    random = numbers.shuffled()
} while random == numbers 

// Dans ce code, on déclare la variable random vide (on l'initialise) puis on y stocke random = numbers.shuffled(). 
// ça sera répéter si random est équivalant à numbers.
