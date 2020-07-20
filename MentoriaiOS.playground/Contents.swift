import Foundation
import UIKit

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

var passwordsToValidate = ["#forTe1", "senhafraca", "Qu@s1", "Voce@Consegue!2019"]

private func validatePassword(with password: [String]) -> [String] {
    
    return passwordsToValidate.filter { $0.count >= 7 }
}

validatePassword(with: passwordsToValidate)

//
var newPasswords = [String]()

for password in passwordsToValidate {
    for character in password {
        if character.isUppercase {
            newPasswords.append(password)
            break
        }
    }
}

print("Resultados")
print(newPasswords)
