```Swift
let name : ["Anas", "Zack", "Samy"]

let uppercasedName = name.first?.uppercased()

```

Pour sécuriser l'éventualité que first soit `nil` on le rend optional pour éviter que la code ne crash. 

Si first est différent de nil, uppercasedName reçoit "ANAS" (la version majuscule du premier élément). Sinon, si first était nil (parce que le tableau est vide), alors uppercasedName recevrait la valeur nil elle-même, et non la chaîne de caractères "nil".