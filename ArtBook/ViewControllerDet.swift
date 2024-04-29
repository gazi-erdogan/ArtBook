

import UIKit

class ViewControllerDet: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate
{

    
    @IBOutlet weak var imgArtist: UIImageView!
    
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtArtist: UITextField!
    @IBOutlet weak var txtYear: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //Recognizer
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(gestureRecognizer)
        
        imgArtist.isUserInteractionEnabled = true
        let imgRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectImage))
        imgArtist.addGestureRecognizer(imgRecognizer)
        
    }
    
    @objc func hideKeyboard()
    {
        view.endEditing(true)
    }
    
    @objc func selectImage()
    {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .camera
        picker.allowsEditing = true
        present(picker, animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imgArtist.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }

}
