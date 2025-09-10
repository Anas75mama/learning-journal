```swift
var name: String? = nil 
```

Dans l'exemple ci-dessus, si nous souhaitions utiliser .count() pour compter le nombre de lettres qui constituent la valeur stockée dans nom swift ne va accepter. Pour sécuriser cette possibilité nous allons utiliser le unwrapping. 

```swift

if let unwrapped = name {
    print("number of caracyers in you name is \(unwrapped.count)")
}
else {
    print("there is nothing to count")
}

```

Dans l'exemple ci-dessus on sécurise la possibilité de lancer un comptage des lettres quand la valeur de nom est nulle 

Le unwrapping (déballage en français) permet de révéler le contenu d'une boite. Pour éliminer le risque de faire crasher le code quand la boite est vide. 

```swift

func getUserName() -> String? {
    "Taylor"
}

if let username = getUserName() {
    print("User name is \(username)")
}
else {
    print("there is no user name")
}
```

même quand on spécifie ce que la fonction `func getUserName()->String?` doit retourner comme valeur ("Taylor") Swift  considère toujours que getUserName est un optional. Il faut donc le déballer. 

```swift
let flowersColors : [String]? = ["yellow", "red", "green"]

if let unWrappedFlowersList = flowersColors {
    for color in unWrappedFlowersList {
        print("Here is the list of flower colors you have in the gift Box \(colors)")
    }
}
else {
    print("there is no colors in the gift boxe today")
}
```

```Swift

var bestScore: Int? = nil
bestScore = 101
if bestScore > 100 {
	print("You got a high score!")
} else {
	print("Better luck next time.")
}

```
ici on demande à Swift de comparer deux valaurs de bestScore 101 et 100. Sauf que n'avons pas encore "Déballé" le contenu de bestScore puisqu'on l'a déclaré comme optional.

Pour remédier à ça, il faudrait d'abord déballer le contenu de bestScore. 

```Swift

var bestScore : String? = nil 

bestScore = 101

let if unWrappedBestScore = bestscore {

    if unWrappedBestScore > 100 {
        print("You get a high score!")
    
    }
    else {
        print("Better luck next time.")
    } 
    
} else {
    print("No score has been recorded")
}

```