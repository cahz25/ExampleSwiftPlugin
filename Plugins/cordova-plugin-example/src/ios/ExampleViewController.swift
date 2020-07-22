//
//  ExampleViewController.swift
//  MyApp
//
//  Created by Augusto Hurtado on 21/07/20.
//

import UIKit

class ExampleViewController: UIViewController {

    public var labelFromHybrid: String = ""
    private let viewName = "ExampleViewController"

    @IBOutlet weak var label: UILabel!

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
    {
        super.init(nibName: self.viewName, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = labelFromHybrid
        self.modalPresentationStyle = .overFullScreen
    }

}
