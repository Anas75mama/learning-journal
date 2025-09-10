```Swift 
let str = "5"
let num = Int(str)
```
Dans le cas ci-dessus Swift ne sait pas si str est vraiment une valeur qu'on peut transformer en Integer. 
ça se trouve, il puorrait s'agir d'un texte comme : "Banana".

Quand on est sûr du contenu d'une variable ou constante on peut forcer le unwrapping comme suit : 

`let num = Int(str)!` 

Swif va déballer la valeur optional `num` et la transformer en Int au lieu de Int?. Mais si on se trompe, le code va crasher.

! cet opérateur est aussi appelé "The crash operator" 