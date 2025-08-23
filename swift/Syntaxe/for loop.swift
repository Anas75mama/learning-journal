let plateforms = ["iOS", "macOS", "tvOS", "watchOS"]
for os in plateforms {
  print("Swift works great on \(os).") 
}
// cette expression permet de balayer en loope les éléments de la liste plateforms
// os peut être remplacée par n'importe quel autre terme
// au lieu de looper les éléments d'une liste, on peut looper comme suit : 
import Foundation

for i in 1...12 {
  print("5x\(i) is \(i*5).")
}

//1...12 est un range qui inclue 1 et 12
//i est une lettre conventionnellement utilisée pour compter de 1 à ......
// si on souhaite avoir une deuxième série de comptage, on peut utiliser j 
// si on souhaite avoir une troisième série de comptage, on peut utiliser k
// si on a une quaitrième série de comptage, on doit revoir l'appelation de notre variable :D 
// on peut aussi insérer une loop dans une loop, qui s'appelle nested loop 
for i in 1...12 {
  print("the first \(i) time table") // incrémentation en fois dans laquelle il y'aura 12 incrémentation de la nested loop j 

  for j in 1...12{
    print("\(j) x \(i) is \(j*i)")
  }
  print() //ce dernier print insert une ligne espace entre chaque table
}
// le résultat est une table de multiplication 
// on peut exclure la borne maximale de notre loop d'itération en utilisant cette syntaxe : 
for i in 1..<12 {
  print("j'ai acheté cet article \(i) fois")
}

// ..< peut aider lorsqu'on travaille avec des liste "Array" et qu'on souhaite utiliser .count pour parcourir tous les éléments de la liste par exeple : 
import Foundation

let noms = ["Charle", "Alice", "Pimpin", "Popo"]
for i in 0..<noms.count {
print("mon est \(noms[i])")
} 
// on peut aussi utiliser cette syntaxe mais elle rendra le code rigide 

let noms = ["Alice", "Charle", "Popo", "Papou"]
for i in 0...3{
print("Mon prénom est \(noms[i])")
}

// parfois, on a pas envie d'utiliser les variable de loop, on peut utiliser un underscore à la place "_"
// ça peut donner ça : 

import Foundation

var lyrics = "Haters gonna"

for _ in 1...5 {
lyrics += " Hate"
}
print(lyrics)
