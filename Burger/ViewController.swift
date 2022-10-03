//
//  ViewController.swift
//  Burger
//
//  Created by Арсений on 21.09.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var blur: UIVisualEffectView!
    @IBOutlet weak var burger: UIButton!
    let myView = UIStackView()
    var leftConstraint: NSLayoutConstraint? = nil
    var topConstraint: NSLayoutConstraint? = nil
    var hightConsraint: NSLayoutConstraint? = nil
    var widthConstraint: NSLayoutConstraint? = nil
    let hehehe = UILabel()
    let siuuu = UILabel()
    let cr7 = UIImageView(image: UIImage(named: "siu"))
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.axis = .vertical
        hehehe.text = "hehehe..."
        siuuu.text = "SIUUUUUUUUUUU"
        myView.addArrangedSubview(hehehe)
        myView.addArrangedSubview(siuuu)
        myView.addArrangedSubview(cr7)
        blur.isHidden = true
        myView.backgroundColor = .lightGray
        myView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(myView)
        leftConstraint = myView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: -300)
        topConstraint = myView.topAnchor.constraint(equalTo: self.view.topAnchor)
        hightConsraint = myView.heightAnchor.constraint(equalTo: self.view.heightAnchor)
        widthConstraint = myView.widthAnchor.constraint(equalToConstant: 300)
        NSLayoutConstraint.activate([
            leftConstraint!, topConstraint!, hightConsraint!, widthConstraint!
        ])
    }
    @IBAction func burgerTapped(_ sender: Any) {
        blur.isHidden = false
        self.view.bringSubviewToFront(myView)
        if self.leftConstraint != nil {
            UIView.animate(withDuration: 0.5) {
                self.leftConstraint!.constant = 0
                self.view.layoutIfNeeded()
            }
        }
    }
}
