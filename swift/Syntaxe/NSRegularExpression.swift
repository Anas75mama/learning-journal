 let regex = try! NSRegularExpression(pattern : "[0-9]+|[+\\-*/]") 


// Dans la règle regex, on utilise "try!" pour dire à Swift d’exécuter la recherche, 
// même si cela peut générer une erreur (sinon, il faudrait gérer l’erreur avec do-catch).
// Le "+" après [0-9] signifie "trouver au moins un chiffre, et autant que possible".  
// La barre verticale "|" joue le rôle de l’opérateur "OU", permettant de chercher soit un nombre, soit un opérateur.  

let texte = display
let matches = regex.matches(in: texte, range: NSRange(texte.startIndex..., in: texte)) 
let elements = matches.map{String(texte[Range($0.range, in: texte)!])}

// On défnie le texte à scanner comme étant display déclaré via la variable texte.
// On crée une variable pour stocker les correspondances trouvées dans la régle regex
// On déclare la variable elements pour y stocker les correspndance trouvées précédemment
// et en les transformant en String.
