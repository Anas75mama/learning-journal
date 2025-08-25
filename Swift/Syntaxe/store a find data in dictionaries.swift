//considérons une liste 
var employee = ["Taylor Swift", "Singer", "Rabat"]
// si nous souhaiterions afficher les données concernant cet employé, on va : 
print("Name: \(employee[0])")
print("Profession: \(employee[1]"))
print("Town: \(employee[2])")
//appeler des information dans une liste en utilisant des index peut générer des risques car l'index pour changer
print("Name: \(employee[0])")
print("Profession: \(employee[1])")
employee.remove(at:1)
print("Town: \(employee[2])")
//La dernière instruction va générer un message d'erreur car il n'existe plus aucune information dans l'index 2. 
//Pour éviter ces erreur Swift propose les ditionaries 
var employee = ["Name" : "Taylor Swift", "Profession" : "Singer","Town" : "Rabat"]
let employee = [
  "Name": "Taylor Swift",
  "Profession": "Singer", 
  "Town": "Rabat"
]
//on va appeler les informations qui sont à gauche : Name, Profession, Name ==> Keys et celles qui sont à droite ==> Values       
print(employee["Name"])
//l'instruction ci-dessus va générer le résultat suivant : 
//Optional("Taylor Swift")
//en parallèle un message d'erreur va apparaite Expression implicitly coerced from 'String?' to 'Any'
//vu qu'il existe un risque que l'information ne se retrouve pas à l'endroit ou on la cherche, Swift nous prévient et labélise le résultat
// comme étant Optional
//pour rassurer Swift on lui propose une valeur par défaut qu'il pourrait afficher si la valeur que nous cherchons n'existe pas
print(employee["Name",default: "Unknown"])
//résultat: Taylor Swift
//on peut stocker d'autres types de données que les "String"
let nombeLaureat = [
  "Anas": true,
  "Baba": true,
  "Samy": true,
]

print(nombeLaureat["Anas", default:false])

