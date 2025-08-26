//La fonction est comme un blender, on règle la vitesse de rotation : paramètre pour le mettre à un certain niveau de 1 à 6 : argument 
func blender (vitesse: Int) {
  print("Blender réglé sur la vitesse \(vitesse)")
}

blender (vitesse : 30)

// Exemple 2 : 

func squareFinder (number : Int) {
  
Print ("the result is \(number * number)")
}
squareFinder (number : 3)

//3 

func squareFinder (number : Int) -> Int {
  return number * number 
}

let result = squareFinder ( number : 9)
print(result)

// Dans le cas où on souhaite réutiliser le résultat de notre fonction, on utilise la formulation avec retrun. 
// La première formulation ne sert qu'afficher dans la console. 
// number est le paramètre

func sayHello (to name : String){
  print("Hello, \(name)!")
}
sayHello (to: "Bibi")

//Pour rendre la formulation plus humaine et fluide. 
//Pourquoi dans la fonction Print() on n'utilise pas le nom du paramètre comme suit : 
prin(message : "Hello") 

// On peut avoir le même comportement en utilisant underscore devant le nom du paramètre

func saluer (_person: String) {
  print("Hello \(person)!")
}
saluer("Taylor")

// La fonction print affiche du texte et saute la ligne. On peut modifier ce comportement en modifiant un paramètre par défaut appelé "terminator". 
// Nos fonctions peuvent également avoir des paramètre par défaut qui font que la fonction agit d'une certaine façon tant qu'on a rien spécifié dans la fonction. 
// Exemple : 

func saluerPerson (_ nom : String, gentillement : Bool = false) {
  if gentillement == false {
print ("Bonjour \(nom)")
  } else 
  {
    print ("Bonjour \(nom) 😊")
  }
}

saluerPerson ("Bibi")
saluerPerson ("Bibi", gentillement : true)

//Version plus compacte en utilisant un opérateur ternaire  : 

func saluerPerson(_ nom: String, gentillement: Bool = false) {
    let message = gentillement ? "Bonjour \(nom) 😊" : "Bonjour \(nom)"
    print(message)
}

// Certaines fonctions sont "Variadic" car elles peuvent contenir plusieurs paramètres du même type
// print est une fonction variadic car elle peut afficher plusieur paramètres de type "String"

//Exemple : 

func squareFinder (numbers : Int...) {
for number in numbers {
print ("le carré de \(number) est \(number * number)")
}
}
squareFinder (numbers : 3, 6,9)

//Int...  signifie que je peux passer autant d'entiers que je veux (c’est un paramètre variadique).
