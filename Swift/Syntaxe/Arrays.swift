//notion apprises aujourd'hui : 
//les index : position d'un éléments dans une liste "Array"
//la méthode ."append"
//une liste ne peut contenir qu'un seul type de donnée

var beatles = ["John", "Paull", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[2])
beatles.append("Anas")
print(beatles[4])

//on peut spécifier le type de donnée qu'on prévoit d'affecter à une variable de type Array de cette façon en utilisant 
var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums)

//on peut faire la même chose en déclarant le type d'Array de cette façon : 
var animal = [Straing]()
animal.append("a cat"]
animal.append["a hors"]
//on peut déclarer le type de donnée qu'on souhaite stocker dans une variable de type Array en déclarant une première variable avec le 
//type souhaité
var animal = ["elephant"]
//d'autres méthodes du type Array
.count //pour compter len nombre d'éléments dans une liste


var animal = [String]()
animal.append("Cat")
animal.append("Hors")
print(animal)
print(animal.count)
//le résultat sera : 2

.remove(at:) //pour supprimer un élément avec un index précis 

var animal = [String]()
animal.append("Cat")
animal.append("Hors")
print(animal)
print(animal.count)
print(animal.remove(at: 1))


//.removeAll() tout supprimer dans une liste

var animal = [String]()
animal.append("Cat")
animal.append("Hors")
print(animal)
print(animal.count)
print(animal.removeAll())
//le prompteur va afficher ()

//.contains("")

var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums)
print(albums.contains("Red"))

//le prompteur va afficher : true
//.sorted pour afficher le éléments de la liste dans un ordre alphabétique 

var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums.sorted())

// .reversed()

let elements = ["Znas","Xab", "Fok", "Bab"]
let reversedElements = elements.reversed()
print(reversedElements)

//cette version du code ne va pas afficher les éléments de la liste à l'envers, mais l'inverse et la garde en mémoire
//ça peu être lourd de tout afficher quand on a beaucoup de données
//on peut accéder au contenu de la liste inversée, avec la méthode .last dans l'exmepl ci-dessou


let elements = [1,2, 3, 4]
let reversedElements = elements.reversed()
print(reversedElements.last!)










