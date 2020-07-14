import Foundation

let passwordsToValidate: [String]
passwordsToValidate = ["#forTe1", "senhafraca", "Qu@s1", "Voce@Consegue!2019"]

private func validatePassword(with password: [String]) -> [String] {

    return passwordsToValidate.filter { $0.count >= 7 }
}

validatePassword(with: passwordsToValidate)
