// 1) Capturer une valeur (closure qui “garde” multiplier)
func makeMultiplier(multiplier: Int) -> (Int) -> Int {
    return { number in
        return number * multiplier
    }
}

// On peut voir (Int) -> Int comme un moule :

    // (Int) = entrée du moule (un nombre)

    // -> Int = sortie du moule (le résultat)

    // Et makeMultiplier fabrique un moule pré-configuré avec le multiplicateur que tu as donné.


let tripler = makeMultiplier(multiplier: 3)
print(tripler(10)) // 30

// 2) Temporiser l'exécution d’un code (escaping closure)
func doAfter(seconds: Int, action: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(seconds)) {
        action()
    }
}

doAfter(seconds: 2) {
    print("2 secondes plus tard")
}

// Mini-notes
// Capture = la closure retient multiplier dans sa mémoire.

// Temporisation = besoin de @escaping car la closure s’exécute après le retour de la fonction.

// Paramètres/retour d’une closure : (InputTypes) -> OutputType (ici () -> Void).


// Dans le code ci-dessous la fonction travel déclare qu'elle peut exécuté une fonction ou closure qui prend un String et ne retourne rien
// L'argument de l'action qui sera exécuté dans travel est déjà défini : London
// L'action annoncé par travel sera définie plus tard via la closure


import SwiftUI

func travel (action : (String) -> Void ){
    print("I'm getting ready to go")
    action("London")
    print("I arrived")
}
travel { (place: String) in
    print("I'm going to \(place) in my car")
    
}

