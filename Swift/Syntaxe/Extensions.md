##### Définition 

Une extension permet d'ajouter une nouvelle méthode à un type existant. 

```Swift

Extension Int {
    func squared() -> Int {
        return slef*self
    }
}

let number = 8
number.squared()
