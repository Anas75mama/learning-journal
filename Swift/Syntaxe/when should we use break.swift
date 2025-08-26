// Dans certains cas, on souhaite sortir de la loop for quand une condition est validée. Ici, on aimerait balayer la liste des scores tant qu'on le score 0 n'est pas trouvé

import Foundation

let scores = [1, 8, 5, 6, 3, 4, 0]
var count = 0

for score in scores {
  if score == 0{
    break
  }
  
  count += 1
}
print("you had \(count) scores before you get 0")

// Essayer de refaire le même exercice mais avec une boucle while
