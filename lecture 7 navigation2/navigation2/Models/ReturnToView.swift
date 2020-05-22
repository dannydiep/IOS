import UIKit

extension UINavigationController {
    
    func returnToTheSpecificView(vc: AnyClass, animated: Bool = true){
        //find the vc in views that we have
        let screen = (viewControllers.filter{$0.isKind(of:vc)}).first
        
        
        //pop to that view
        self.popToViewController(screen!, animated: animated)
        
    }
}
