// Pour comprendre les Closures, il faudrait revoir le principe des fonctions dans Swift. 
// La fonction est un bout de programme avec une fonction précise

func direBonjour() {
  print("Bonjour !")
}
direBonjour() 

// func sert à déclarer la fonction
// () veut dire qu'elle ne prend pas de paramètre
// Elle affiche simplement du texte 

// ajouter des paramètres et un résultat 

func addition (a : Int, b: Int) -> Int {
  return a+b 
}
let resultat = addition (a : 2, b : 3)
print(resultat) //5 

// a: Int et b: Int sont les paramètres d'entrée
// -> signifie que la fonction renvoi un Int
// return a+b dit quoi renvoyer 

func estCePaire(a : Int) -> Bool {
 let b = (a % 2) == 0
return b
} 
let monResultat = estCePaire(a : 4)
print (monResultat)

// la Closure est une fonction sans nom qu'on peut 
  // Stocker dans une variable
  // Passe à une autre fonction
  // utiliser comme un objet 

let estCePaire = { (a: Int) -> Bool in 
                  return a%2 == 0
                 }
let monResultat = estCePaire(a : 3)
print(monResultat) 

//le in annonce la fin de la liste des paramètre et le début du corps de la closure. sans le in, Swift ne saura pas où commence le code à executer. 
// We use braces to declare parameters in a closure. 


let driving = { 
print("i'm driving in my car")
}

// Si on souhaite passer cette closure dans une fonction en tant que paramètre, le type de paramètre doit être spécifié comme : () -> void. Ca veut dire "n'accepte pas de paramètre et retourne void
// C'est la façon de Swift pour dire "rien"

// Maintenant on peut créer une fonction travel () qui accepte différents types de traveling actions. Et imprime un message avant et après.
