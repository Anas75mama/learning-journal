```Swift

enum PasswordErro : Error {
    case obvious
}

func checkPassword(_password: String) throws -> bool {
    if password == "password" {
    throw PasswordError.obvious
}

return true 

}
do {
    try checkPassword("password")
    print("That password is good!")

}catch {
    print("you can't use that password.")
}
```

Do, throw et catch forment le trio de gestion des erreurs dans Swift : un dialogue structuré pour gérer les anomalies dans le code. 

Quand on sait qu'une erreur peut se produire en lancant exécutant une fonction, on ajoute le mot `throw`

```Swift 

func openDoc(nom : String) throws -> String {
    //Cete fonction PEUT échouer
    //Si tout va bien elle retourne un String
    //Sinon elle lance une erreur
}

```
Avec `enum`on liste des possibilités d'erreurs 

```Swift

enum ErreurFichier : Error {
    case fichierIntrouvable
    case pasDepermission
    case fichierCorrompu
}

fun openDoc{nom : String} throws -> String {
    if nom.isEmpty {
        throw ErreurFichier.fichierIntrouvable
    }
}
if nom == "secret.text" {
    throw ErreurFichier.padDepermission
}

//Si tout va bien, on retourn le contenu
return "Contenu du fichier"

```
Première partie : on définie la fonction qui fait appel aux cas d'erreur avec enum 
Deuxième partie : on appel la fonction avec do, try, catch

