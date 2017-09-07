# Swift Controls Basic UITextView

TextView é um elemento de tela que exibe uma área editável com multiplas linhas e barra de rolagem automática.


// Propriedade que define e retorna o texto
self.textViewCadastro.text = ""


// Propriedade que define se o objeto é editável ou não
self.textViewCadastro.isEditable = true


// Propriedade que define se o objeto é selecionável ou não
self.textViewCadastro.isSelectable = true


// Propriedade que define se o objeto recebe interação do usuário
self.textViewCadastro.userInteractionEnabled = false

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
