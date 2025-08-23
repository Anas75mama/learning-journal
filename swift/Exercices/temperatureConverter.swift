//My code 
var tempCelius : Double = 30
let kelvinConstant = 273.15

var convertedTemp = tempCelius + kelvinConstant
print("Temperature in Kelvin is : \(convertedTemp)")

//chatGPT improvement 

import Foundation

print("Entrez une température en Celsius : ", terminator: "") // invite l'utilisateur à saisir du texte 
if let input = readLine(), let tempCelsius = Double(input) {
    let kelvinConstant = 273.15
    let convertedTemp = tempCelsius + kelvinConstant
    print("Température en Kelvin : \(convertedTemp)")
} else {
    print("Entrée invalide. Veuillez saisir un nombre.")
}
// 'readLine()` permet à l'utilisateur de saisir une valeur via la console.
// Si la saisie est valide (un nombre), on effectue le calcul tempCelsius + kelvinConstant.
// On lit la valeur de la constante kelvinConstant et on affiche le résultat.
// On intégre du String interpolation pour comobiner texte et valeur numérique 
// Sinon, on affiche un message d'erreur grâce à `else`.

// `Foundation` est un framework de la bibliothèque standard d'Apple.
// Il fournit des outils pour manipuler du texte, des dates, et gérer les entrées utilisateur.
//backticks 
