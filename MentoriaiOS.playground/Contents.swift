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
        
        filtersValidePasswords = filterMinimumSevenCharacters(with: filtersValidePasswords)
        filtersValidePasswords = filterAtLeastOneUpperCaseCharacters(with: filtersValidePasswords)
        filtersValidePasswords = filterAtLeastOneLowerCaseCharacters(with: filtersValidePasswords)
        
        return filtersValidePasswords
    }
    
    // MARK: - Private Methods
    
    private func filterMinimumSevenCharacters(with passwords: [String]) -> [String] {
        let passwords = passwords.filter { $0.count >= 7 }
        
        return passwords
    }
    
    private func filterAtLeastOneUpperCaseCharacters(with passwords: [String]) -> [String]{
        
        var passwordsFiltered = [String]()
        
        for password in passwords {
            for character in password {
                if character.isUppercase {
                    passwordsFiltered.append(password)
                    break
                }
            }
        }
        
        return passwordsFiltered
    }
    
    private func filterAtLeastOneLowerCaseCharacters(with passwords: [String]) -> [String] {
        
        var passwordsFiltered = [String]()
        
        for password in passwords {
            for character in password {
                if character.isLowercase {
                    passwordsFiltered.append(password)
                    break
                }
            }
        }
        
        return passwordsFiltered
    }
}

// MARK: - Properties

var inputPasswords = ["#forTe1", "senhafraca", "Qu@s1", "Voce@Consegue!2019"]

let passWordValidation = PasswordValidation()

print("Resultado: \n")
print(passWordValidation.validate(passwords: inputPasswords))
