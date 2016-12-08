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
        // dismiss keyboard anywhere
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    //function called when tap is recognized
    func dismissKeyboard(){
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //accion del boton saludar
    @IBAction func button_hello(_ sender: UIButton) {
        //poner nuevo texto recogido
        label_hello.text = "Hola \(textfield_text.text!)"
        
        //Poner la caja de texto vacía
        textfield_text.text = ""
        
        //Ocultar el teclado cuando hayamos hecho click en el botón
        self.view.endEditing(true)
        // dismiss keyboard anywhere
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestViewController : SecondViewController = segue.destination as! SecondViewController
        
        DestViewController.textPassed = textfield_text.text!
        
    }

}

