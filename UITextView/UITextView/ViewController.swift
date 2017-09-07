//
//  ViewController.swift
//  UITextView
//
//  Created by Swift on 28/03/16.
//  Copyright © 2016 Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    
    @IBOutlet weak var textViewCadastro: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /* TextView é um elemento de tela que exibe uma área editável com multiplas linhas e barra de rolagem automática.
        
        
        */
        
        
        // Propriedade que define e retorna o texto
        self.textViewCadastro.text = ""
        
        
        // Propriedade que define se o objeto é editável ou não
        self.textViewCadastro.isEditable = true
        
        
        // Propriedade que define se o objeto é selecionável ou não
        self.textViewCadastro.isSelectable = true
        
        
        // Propriedade que define se o objeto recebe interação do usuário
        //self.textViewCadastro.userInteractionEnabled = false
        
        
        if (self.textViewCadastro.text.isEmpty){
        
            print("Vazio")
        
        }else{
        
            print("Tem texto")
        
        }
        
        
        // Atribuindo o delegate
        
        self.textViewCadastro.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func exibir(_ sender: UIButton) {
        
        self.textViewCadastro.text = "Nome: Felipe\nSobrenome: Martins\nidade: 2.4\n"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.becomeFirstResponder()
    }
    
    
    override var canBecomeFirstResponder : Bool {
        return true
    }

    
    //MARK: Métodos de UITextViewDelegate
    
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        print("textViewDidBeginEditing")
    }
    
    
    func textViewDidEndEditing(_ textView: UITextView) {
        
        print("textViewDidEndEditing")
        
    }
    
    func textViewDidChange(_ textView: UITextView) {
        
        print("textViewDidChange")
    }
 }

