/*
 no mínimo 7 caracteres - ok
 pelo menos uma letra maiúscula - ok
 pelo menos uma letra minúscula
*/

/*
 uma lista de palavras
 pegar uma palavra
 verificar se tem letra maiúscula nesta palavra
*/

// MARK: - Properties

print("Quero conflitos 😈")

var passwordsToValidate = ["#forTe1", "senhafraca", "Qu@s1", "Voce@Consegue!2019"]
var newPasswordsMaiscule = [String]()
// o que é Maiscule?
var newPasswordsMinuscule = [String]()

// MARK: - Methods

private func validatePassword(with password: [String]) -> [String] {
    // aqui percorre a lista inteira
    return passwordsToValidate.filter { $0.count >= 7 }
}

validatePassword(with: passwordsToValidate)

// Valida se possui pelo menos uma letra minúscula.
for password in passwordsToValidate {
    // aqui percorre a lista inteira
    for character in password {
        if character.isLowercase {
            newPasswordsMinuscule.append(password)
            break
        }
    }
}


// Valida se tem pelo menos uma letra maiúscula.
// só pra dar conflito mesmo =) 
for password in passwordsToValidate {
    // aqui percorre a lista inteira
    for character in password {
        if character.isUppercase {
            // https://www.google.com/search?q=Maiscule
            newPasswordsMaiscule.append(password)
            break
        }
    }
}


print("Resultados:")
print(newPasswordsMaiscule)

print("Resultados:")
print(newPasswordsMinuscule)



