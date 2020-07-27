import Foundation

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

var passwordsToValidate = ["#forTe1", "senhafraca", "Qu@s1", "Voce@Consegue!2019"]
var newPasswordsMaiscule = [String]()
var newPasswordsMinuscule = [String]()

// MARK: - Methods

private func validatePassword(with password: [String]) -> [String] {
    
    return passwordsToValidate.filter { $0.count >= 7 }
}

validatePassword(with: passwordsToValidate)

// Valida se tem pelo menos uma letra maiúscula.
for password in passwordsToValidate {
    for character in password {
        if character.isUppercase {
            newPasswordsMaiscule.append(password)
            break
        }
    }
}

// Valida se possui pelo menos uma letra minúscula.
for password in passwordsToValidate {
    for character in password {
        if character.isLowercase {
            newPasswordsMinuscule.append(password)
            break
        }
    }
}

print("Resultados:")
print(newPasswordsMaiscule)

print("Resultados:")
print(newPasswordsMinuscule)



