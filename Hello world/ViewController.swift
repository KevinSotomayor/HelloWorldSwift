//
//  ViewController.swift
//  Hello world
//
//  Created by Kevin S. on 29/12/15.
//  Copyright © 2015 Kevin Sotomayor Vergara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield_text: UITextField!
    @IBOutlet weak var label_hello: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //accion del boton saludar
    @IBAction func button_hello(sender: UIButton) {
        //poner nuevo texto recogido
        label_hello.text = "Hola \(textfield_text.text!)"
        
        //Poner la caja de texto vacía
        textfield_text.text = ""
        
        //Ocultar el teclado cuando hayamos hecho click en el botón
        self.view.endEditing(true)
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController : SecondViewController = segue.destinationViewController as! SecondViewController
        
        DestViewController.textPassed = textfield_text.text!
        
    }

}

