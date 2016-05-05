import UIKit

//--------------------------------------------------
// TextField 확장 테스트 뷰컨트롤러
//--------------------------------------------------
class ViewController: UIViewController {

    @IBOutlet weak var txtField1: UITextFieldExtension!
    @IBOutlet weak var txtField2: UITextFieldExtension!
    @IBOutlet weak var btnRun: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 텍스트필드 커서에 따라 배경색 변경 처리
        txtField1.delegate = txtField1
        txtField2.delegate = txtField2

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

