//
//  ISSplashViewController.swift
//  iSaldos
//
//  Created by jorgemoniz on 13/5/17.
//  Copyright © 2017 Jorge Moñiz. All rights reserved.
//

import UIKit
import Parse

class ISSplashViewController: UIViewController {
    
    //MARK: - Variables locales
    var viewAnimator : UIViewPropertyAnimator!
    var desbloqueoGesto = Timer()
    
    //MARK: - IBOutlets
    @IBOutlet weak var myImageSplashSaldos: UIImageView!
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewAnimator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: { 
            self.myImageSplashSaldos.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
            self.desbloqueoGesto = Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(self.manejadorAutomatico), userInfo: nil, repeats: false)
        })
        
        viewAnimator.startAnimation()
    }
    
    //MARK: - Utils
    func manejadorAutomatico() {
        let logoAnimation = UIViewPropertyAnimator(duration: 0.5, curve: .easeInOut) {
            self.myImageSplashSaldos.transform = CGAffineTransform(scaleX: 25, y: 25)
        }
        logoAnimation.startAnimation()
        logoAnimation.addCompletion { _ in
            self.beginApp()
        }
    }
    
    func beginApp() {
        if(customPrefs.string(forKey: CONSTANTES.USER_DEFAULT.VISTA_GALERIA_INICIAL) != nil) {
            if PFUser.current() == nil {
                let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! ISLoginViewController
                loginVC.modalTransitionStyle = .crossDissolve
                present(loginVC, animated: true, completion: nil)
            } else {
                let revealVC = self.storyboard?.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
                revealVC.modalTransitionStyle = .crossDissolve
                present(revealVC, animated: true, completion: nil)
            }
        } else {
            customPrefs.setValue("OK", forKey: CONSTANTES.USER_DEFAULT.VISTA_GALERIA_INICIAL)
            let galeriaVC = self.storyboard?.instantiateViewController(withIdentifier: "GaleriaTutorialViewController") as! ISGaleriaTutorialViewController
            galeriaVC.modalTransitionStyle = .crossDissolve
            present(galeriaVC, animated: true, completion: nil)
        }
    }
}
