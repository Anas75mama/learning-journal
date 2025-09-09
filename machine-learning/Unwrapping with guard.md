On peut également utiliser `guard let` pour déballer (unwrapping) un optional. Avec `guard let` on va sortir directement de la boucle si on tombe sur `nil` 
La seul différence c'est ce que le unwrapped optional va rester valable même si on quite la condition ou la boucle. 
Comme dans cet exemple :

```Swift 

func greet (_name : String?) {
    guard let unwrapped = name else {
        print("you didn't provide à name!")
        return
    }
print("Hello, \(unwrapped)!")

}
```

##### pourquoi on utilise le underscore devant l'étiquette de l'argument d'une fonction ? 

La donnée que process la fonction est appelée :

De l'extérieur (quand on appelle la fonction) : argument

De l'intérieur : paramètre



Pour éviter de réécrire le nom de l'argument lors de l'appel de la fonction de l'extérieur, on met un Under score lors de la création de la fonction devant le nom de l'argument.