// How to use switch statements to check multiple conditions
enum Weather {
    case sun, rain, wind, snow, unknown
}
let forecast = Weather.sun

if forecast == .sun {
    print("It should be a nice day")
} else if forecast == .rain {
    print("Peak an ambrella")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain {
    print("School is cancelled")
} else {
    print("Our forecast genrator is broken")
}

// dans l'exmple ci-dessus, on peut utiliser plusieurs else if pour vérifier si notre constante forecast remplie bien 
// une condition de celles listées. 
// il repasser une revue tous les éléments d'enum.
// dans le code ci-dessus, on répète plusieurs fois le nom de la constante forecast
// on a vérifié deux fois rain
// on a oublié de vérifier snow
// on peut otpimiser ce code comme suit : 

switch forecast {
case.sun : 
  print("il fait beau")
case.rain :
  print("prend un parapluie")
case.wind :
  print("attention ça glisse")
case.unknown :
  print("fais ce que tu veux bro")
}

// avec switch on doit vérifier tous les éléments d'enum
// on doit en oublier un 
// l'execution du code s'arrête dés qu'une des conditions listées est remplie
// les vérifications avec switch se font dans l'ordre
// si on veut toutes les actions soient executées quelques soient les conditions, on peut utiliser fallthroug. 

let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

// résultat du code : 
//My true love gave to me…
//5 golden rings
//4 calling birds
//3 French hens
//2 turtle doves
//A partridge in a pear tree






