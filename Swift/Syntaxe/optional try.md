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