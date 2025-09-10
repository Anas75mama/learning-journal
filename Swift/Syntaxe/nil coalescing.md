```Swift 

func CheckName (for id : Int) -> String? {
    if id == 1{
    return "Taylor Swift is here"
}else {
    return nil
}
}


let user = CheckName(id: 15)

```
Dans l'exmple ci-dessus la fonction va retourner nil car l'id est différent de 1. sauf que String? n'est pas déballée et ça fera crasher le code.

Pour y remédier, on va faire appel à la notioin de nil coalescing. 

```Swift 
let user = username (id: 15) ?? "Anonymous"

```
