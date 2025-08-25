# Structs 

### 📖 Détails et Explications

Les structs dans swift nous permettent de créer nos propres data types
Les structs peuvent contenir des variables, constantes ou fontioins
Les variables et constantes sont appelées "properties"
Il y'a deux types de properties : "stored properties" et "computed properties"  

Quelle est la différence entre une tuple et une struct ? 

Une tuple est une struct sans nom. Mais, elle peut stocker des information comme un struct. 
Son point faible est quelle n'est pas très agile. Si on souhaite retourner plusieurs types de données à partir d'une fonction
l'utilisation des tuples sera très rigide (voir exemple 3). Imaginons si on souhaitais ajouter une nouvelle properties ? 
Les champs d'une struct ont un nom explicite, alors que les éléments d'une tuple sont accessibles via leur position. 
Avec les structs, le code est plus résilient aux changements.

Quand est ce que on utilise les "stored properties" et les "computed properties" ? 
Pour des questions de performance, c'est plus pratique d'utiliser des "stored properties", l'info est disponible quelques part 
et on n'a pas besoin de la recalculer à chaque fois qu'on en a besoin. En revanche, il est préférable d'utiliser des "computed properties"
si notre variable dépend d'autres variables et sera amené à évoluer en fonction des autres données.  

Une struct peut contenir une fonction qui peut se servir des properties de la struct comme elle veut. La fonction quand elle est appelée à l'extérieur de la struct elle s'appelle méthode. 

Différence entre une fonction et une méthode : 

Imaginons une caisse à outils :

La Fonction : L'outil indépendant
Une fonction, c'est comme un marteau que vous avez dans votre caisse à outils.

Il est indépendant.

Vous pouvez le prendre n'importe quand pour faire une tâche précise (planter un clou).

Il n'appartient à rien d'autre, il est juste là, disponible pour tout le monde.

La Méthode : La fonctionnalité intégrée à un objet
Une méthode, c'est comme le bouton "démarrer" de votre micro-ondes.

Ce bouton est aussi une "fonctionnalité" (il fait quelque chose), mais il appartient au micro-ondes.

Il n'existe pas tout seul dans la caisse à outils. Il est fixé sur l'objet et n'a de sens que pour cet objet. Vous ne pouvez pas utiliser le bouton "démarrer" du micro-ondes pour démarrer votre voiture.

Observers : didSet et wilSet. 

L'ajout de mutating devant une fonction de la struct lui donne l'autorisation de modifier les propriétés de la struc. En revanche, si la struc est instanciée avec un let, mutating se retrouve dans une situation contradictoire (elle autorise la fonction de faire des modifications mais dans un socle figé) -> Erreur. 

sans mutating, une fonction a le droit d'exploiter les propriétés de la struct comme elle veut, mais elle ne peux pas les modifier (lecture sans écriture) .

Qu'on instancie la struct avec un let ou un var, la méthode ne peut que lire les propriétés et les exploiter pour donner un résultat. 

On utilise beaucoup "print" pour afficher du texte. Print est une struct qui contient des méthodes comme (voir exemple 5). 


Les "Array" sont aussi des structs, ce qui veut dire qu'elles ont leurs propres méthodes. 


### 💻 Exemples de Code

Exemples de structs

Exemple 1 : Struct simple avec des stored properties

``` swift

import swiftUI

struct Sport {
    var name : String
}

var tennis = sport(name:"Tennis")
print(tennis.name)

```swift

```swift 

Exemple 2 : Struc avec des stored properties et computed properties

import swiftUI

struct sport {
    var name : String 
    var isOlympicSport : Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olypmic sport"
        }else {
            return "\(name) is not an olympic sport"
        }
    }
}

let mySport = sport (name: "Cheesboxing", isOlympicSport: true)
print(mySport.isOlympicStatus)

```swift 

```swift
Exemple 3: différence entre tuple et struct

Avec struct 

func authenticate(_ user: User) { ... }
func showProfile(for user: User) { ... }
func signOut(_ user: User) { ... }

Avec tuple 

func authenticate(_ user: (name: String, age: Int, city: String)) { ... }
func showProfile(for user: (name: String, age: Int, city: String)) { ... }
func signOut(_ user: (name: String, age: Int, city: String)) { ... }

```swift

Exemple 4: Méthodes

````swift

struct city {
    let population : Int 

    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population = 20) // on crée une instance de la struct qu'on stock dans london
london.collectTaxes() //ici on va chercher la méthode de l'instance "london" de la struct de base "city". 

```swift```

Exemple 5:

```swift```

//La méthode count()

let string = "Do or note to do there is no try"
print(string.count)

//La méthode hasPrefix()

print(string.hasPrefix("Do")) //Return un Boolean

//La méthode upperCased () 
//La méthode sorted() 