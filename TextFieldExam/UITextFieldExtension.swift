import UIKit

//--------------------------------------------------
// TextField 입력박스 배경색 변경 확장
//--------------------------------------------------
@IBDesignable
class UITextFieldExtension: UITextField, UITextFieldDelegate {

    @IBInspectable var focusBackgroundColor: UIColor?
    
    private var defaultBackgroundColor: UIColor?
    
    func textFieldDidBeginEditing(textField: UITextField) {
        if focusBackgroundColor == nil {
            print("오류 - focusBackgroundCOlor 설정")
            return 
        }
        defaultBackgroundColor = self.backgroundColor
        self.backgroundColor = focusBackgroundColor
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        self.backgroundColor = defaultBackgroundColor
    }
}
