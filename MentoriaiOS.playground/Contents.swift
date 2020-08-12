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

class PasswordValidation {
    
    // MARK: - Public Methods
    
    func validate(passwords: [String]) -> [String] {
        
        var filtersValidePasswords = passwords
        
        filterMinimumSevenCharacters(passwords: &filtersValidePasswords)
        filterAtLeastOneUpperCaseCharacters(passwords: &filtersValidePasswords)
        filterAtLeastOneLowerCaseCharacters(passwords: &filtersValidePasswords)
        
        return filtersValidePasswords
    }
    
    // MARK: - Private Methods
    
    private func filterMinimumSevenCharacters(passwords: inout [String]){
        passwords = passwords.filter { $0.count >= 7 }
    }
    
    private func filterAtLeastOneUpperCaseCharacters(passwords: inout [String]) {
        
        var passwordsFiltered = [String]()
        
        for password in passwords {
            for character in password {
                if character.isUppercase {
                    passwordsFiltered.append(password)
                    break
                }
            }
        }
        
        passwords = passwordsFiltered
    }
    
    private func filterAtLeastOneLowerCaseCharacters(passwords: inout [String]) {
        
        var passwordsFiltered = [String]()
        
        for password in passwords {
            for character in password {
                if character.isLowercase {
                    passwordsFiltered.append(password)
                    break
                }
            }
        }
        
        passwords = passwordsFiltered
    }
}

// MARK: - Properties

var inputPasswords = ["#forTe1", "senhafraca", "Qu@s1", "Voce@Consegue!2019"]

let passWordValidation = PasswordValidation()

print("Resultado: \n")
print(passWordValidation.validate(passwords: inputPasswords))
