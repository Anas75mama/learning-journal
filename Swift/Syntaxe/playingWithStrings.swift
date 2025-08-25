//String interpolation : place une variable de n'importe quel type à l'intérieur d'un String
//Pour joindre deux String on utilise +

let firstPart = ("Que puis-je")
let secondPart = ("Pour vous")
let phraseDeSalutation = firstPart + (" ") + secondPart
//Le résultat de ce bout de code sera : Que puis-je Pour vous ?
//Le + permet d'addition deux variable de type : Int et Double, et également additionner deux textes String. 
//On appelle ça : operator overloading
//Les guillemets de chaque côté d'un String permettent de préciser à Swift l'endroit ou comment le texte et l'endroit ou ça s'arrête

let name = "Popo"
let age = 30
let message = "\(name) est un jeune de \(age) ans."
print(message)

//Si on souhaite que notre String aille sur plusieurs lignes, on doit utiliser trois guillemets 





