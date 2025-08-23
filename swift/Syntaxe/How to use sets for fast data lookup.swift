// Dans les chapitres précédents j'ai appris deux maières de collecter les données : les array et dictionary 
// Dans ce chapitre on va voir les Sets() qui ressemble au Array sauf qu'on ne peut ajouter ou dupliquer des éléments 
// Ne stockent pas les éléments dans un ordre précis 
// En terme de syntaxe, on crée l'array et on l'ajoute dans un Set()

let peopole = Set(["Anas", "Bobo", "Ben"])
print(peopole)
// Resultat :
["Bobo", "Ben", "Anas"]
// On remarque que le résultat ne respect pas l'odre dans lequel les éléments du Set() ont été définis

var peopole = Set<String>() //on initialise une variable appelée peopole à laquelle on affecte un Set vide de type Str
peopole.insert("Anas")
peopole.insert("Pineappel")
peopole.insert("Banana")

if peopole.contains("Anas"){
    print("The list conains Anas")
}
else {
    print("The liste doesn't contains what you are looking for")
}
// .insert() va insérer des éléments dans un ordre aléatoire 
// .append qu'on avait vu dans le précédent chapitre ajoute un élément à la fin d'une liste
// avec les Set() on utilisera .insert()
// au lieu de stocker des informations dans l'ordre les Set() les stocke dans un ordre optimisé qui permet d'y accéder facilement
// dans une liste array qui contient 100 éléments, une recheche via .contains, doit parourir les 100 éléments de la liste, ce qui peut 
//être trop long
// to read the nnumber of items in a set we can use count
// .sorted to retun a sorted array containing the set's items.

//on utilise Set() quand on veut avoir des valeurs uniques et y accéder rapidement 




