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

Observers : didSet et wilSet. 

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


Exemple 3: différence entre tuple et struct

Avec struct 

func authenticate(_ user: User) { ... }
func showProfile(for user: User) { ... }
func signOut(_ user: User) { ... }

Avec tuple 

func authenticate(_ user: (name: String, age: Int, city: String)) { ... }
func showProfile(for user: (name: String, age: Int, city: String)) { ... }
func signOut(_ user: (name: String, age: Int, city: String)) { ... }