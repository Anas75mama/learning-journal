##### définition 

Pour sécuritser la possibilité que la valeur d'une proriété d'un struct soit différente du type annoncé, on peut utiliser init?

```Swift 

struct person {
    var id : String
    init? (id: String) {
        if id.count == 9 {
            self.id = id
        }else {
            return nil
        }
    }
}

```

Comme ça le code ne crash pas quand la valeur retourner contient un id avec un nombre de lettres supérieur à 9. 

