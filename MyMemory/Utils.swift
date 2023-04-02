//
//  Utils.swift
//  MyMemory
//
//  Created by 이나경 on 2023/04/03.
//

extension UIViewController {
    var tutorialSB: UIStoryboard {
        return UIStoryboard(name: "Tutorial", bundle: Bundle.main)
    }
    func instanceTutorialVC(name: String) -> UIViewController? {
        return self.tutorialSB.instantiateViewController(withIdentifier: name)
    }
}
