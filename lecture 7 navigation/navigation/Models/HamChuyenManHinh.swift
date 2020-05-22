import UIKit

extension UINavigationController {
    
    func quayVeManHinhCuThe(vc:AnyClass, animated:Bool = true) {
        // di tim tim trong nhung view dang co, [vc]
        let manHinh = (viewControllers.filter{$0.isKind(of:vc)
        }).first
        
        
        // Pop
        self.popToViewController(manHinh!, animated: animated)
        
    }
}
