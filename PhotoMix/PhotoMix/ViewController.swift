//
//  ViewController.swift
//  PhotoMix
//
//  Created by Hassan Hadeer on 2021-09-08.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    public var imagePickerController: UIImagePickerController?
    public var defaultImageUrl: URL?
        
    internal var selectedImage: UIImage? {
        get{
            return self.selectedImageView.image
        }
        set {
            switch newValue{
            case nil:
                self.selectedImageView.image = nil
                self.selectImageButton.isEnabled = true
                self.selectImageButton.alpha = 1
                                
                self.removeImageButton.isEnabled = true
                self.removeImageButton.alpha = 1
                
            default:
                self.selectedImageView.image = newValue
                self.selectImageButton.isEnabled = false
                self.selectImageButton.alpha = 0.5
                
                self.removeImageButton.isEnabled = true
                self.removeImageButton.alpha = 1
                
                self.filter1Button.isEnabled = true
                self.filter1Button.alpha = 1
                
                self.filter2Button.isEnabled = true
                self.filter2Button.alpha = 1
                
                self.filter3Button.isEnabled = true
                self.filter3Button.alpha = 1
                
                self.filter4Button.isEnabled = true
                self.filter4Button.alpha = 1
                
                self.filter5Button.isEnabled = true
                self.filter5Button.alpha = 1
                
                self.filter6Button.isEnabled = true
                self.filter6Button.alpha = 1
                
                self.filter6Button.isEnabled = true
                self.filter6Button.alpha = 1
                
                self.filter7Button.isEnabled = true
                self.filter7Button.alpha = 1
                
                self.filter8Button.isEnabled = true
                self.filter8Button.alpha = 1
                
                self.filter9Button.isEnabled = true
                self.filter9Button.alpha = 1
                
                self.filter10Button.isEnabled = true
                self.filter10Button.alpha = 1
                
                self.filter11Button.isEnabled = true
                self.filter11Button.alpha = 1
                
                self.filter12Button.isEnabled = true
                self.filter12Button.alpha = 1
                
                self.savePhotoButton.isEnabled = true
                self.savePhotoButton.alpha = 1
                                
            }
            tempImage = selectedImageView.image
        }
} // selectedImage , all the filter and remove button will be enabled after the image selection
    
    @IBOutlet weak var selectedImageView: UIImageView!
    @IBOutlet weak var selectImageButton: UIButton!{
        didSet {
            guard let button = self.selectImageButton
            else{ return }
            button.isEnabled = true
            button.alpha = 1
        }
    } // selectImageButton enabled by default if no image
    
    @IBOutlet weak var removeImageButton: UIButton! {
        didSet {
            guard let button = self.removeImageButton
            else { return }
            button.isEnabled = false
            button.alpha = 0.5
        }
    } // removeImageButton disable by default if no image
    
    
    @IBOutlet weak var filter1: UIImageView!
    @IBOutlet weak var filter2: UIImageView!
    @IBOutlet weak var filter3: UIImageView!
    @IBOutlet weak var filter4: UIImageView!
    @IBOutlet weak var filter5: UIImageView!
    @IBOutlet weak var filter6: UIImageView!
    @IBOutlet weak var filter7: UIImageView!
    @IBOutlet weak var filter8: UIImageView!
    @IBOutlet weak var filter9: UIImageView!
    @IBOutlet weak var filter10: UIImageView!
    @IBOutlet weak var filter11: UIImageView!
    @IBOutlet weak var filter12: UIImageView!
    

    @IBOutlet weak var filter1Button: UIButton!{
        didSet {
            guard let button = self.filter1Button
            else { return }
            button.isEnabled = false
            button.alpha = 0.5
        }
    }// filter1Button disable by default if no image
    @IBOutlet weak var filter2Button: UIButton!{
        didSet {
            guard let button = self.filter2Button
            else { return }
            button.isEnabled = false
            button.alpha = 0.5
        }
    }// filter2Button disable by default if no image
    @IBOutlet weak var filter3Button: UIButton!{
        didSet {
            guard let button = self.filter3Button
            else { return }
            button.isEnabled = false
            button.alpha = 0.5
        }
    }//filter3Button disable by default if no image
    @IBOutlet weak var filter4Button: UIButton!{
        didSet {
            guard let button = self.filter4Button
            else { return }
            button.isEnabled = false
            button.alpha = 0.5
        }
    }//filter4Button disable by default if no image
    
    @IBOutlet weak var filter5Button: UIButton!{
        didSet {
            guard let button = self.filter5Button
            else { return }
            button.isEnabled = false
            button.alpha = 0.5
        }
    }//filter5Button disable by default if no image
    @IBOutlet weak var filter6Button: UIButton!{
        didSet {
            guard let button = self.filter6Button
            else { return }
            button.isEnabled = false
            button.alpha = 0.5
        }
    }//filter6Button disable by default if no image
    @IBOutlet weak var filter7Button: UIButton!{
        didSet {
            guard let button = self.filter7Button
            else { return }
            button.isEnabled = false
            button.alpha = 0.5
        }
    }//filter7Button disable by default if no image
    @IBOutlet weak var filter8Button: UIButton!{
        didSet {
            guard let button = self.filter8Button
            else { return }
            button.isEnabled = false
            button.alpha = 0.5
        }
    }//filter8Button disable by default if no image
    @IBOutlet weak var filter9Button: UIButton!{
        didSet {
            guard let button = self.filter9Button
            else { return }
            button.isEnabled = false
            button.alpha = 0.5
        }
    }//filter9Button disable by default if no image
    @IBOutlet weak var filter10Button: UIButton!{
        didSet {
            guard let button = self.filter10Button
            else { return }
            button.isEnabled = false
            button.alpha = 0.5
        }
    }//filter10Button disable by default if no image
    @IBOutlet weak var filter11Button: UIButton!{
        didSet {
            guard let button = self.filter11Button
            else { return }
            button.isEnabled = false
            button.alpha = 0.5
        }
    }//filter11Button disable by default if no image
    @IBOutlet weak var filter12Button: UIButton!{
        didSet {
            guard let button = self.filter12Button
            else { return }
            button.isEnabled = false
            button.alpha = 0.5
        }
    }//filter12Button disable by default if no image
    
 
    @IBOutlet weak var savePhotoButton: UIButton!{
        didSet {
            guard let button = self.savePhotoButton
            else { return }
            button.isEnabled = false
            button.alpha = 0.5
        }
    }//savePhotoButton disable by default if no image
    
    
    var tempImage:UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.selectedImageView.contentMode = .scaleAspectFit
        self.selectImageButton.isEnabled = self.selectedImage == nil
    } // viewDidLoad after loading the image diable the add photo button

    
    @IBAction func selectImageButtonAction(_ sender: Any) {
        
        if self.imagePickerController != nil {
            self.imagePickerController?.delegate = nil
            self.imagePickerController = nil
        }
        self.imagePickerController = UIImagePickerController.init()
        
        
        let alert = UIAlertController.init(title: "Select your Photo", message: nil, preferredStyle: .actionSheet)
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            alert.addAction(UIAlertAction.init(title: "Camera", style: .default, handler: { (_) in
                self.presentImagePicker(controller: self.imagePickerController!, source: .camera)
            }))
        }
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            alert.addAction(UIAlertAction.init(title: "Library", style: .default, handler: { (_) in
                self.presentImagePicker(controller: self.imagePickerController!, source: .photoLibrary)
            }))
        }
        
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum) {
            alert.addAction(UIAlertAction.init(title: "Albums", style: .default, handler: { (_) in
                self.presentImagePicker(controller: self.imagePickerController!, source: .savedPhotosAlbum)
            }))
        }
        
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .cancel))

        
        self.present(alert, animated: true)
        
    } // selectImageButtonAction to select the image from the source
    

    internal func presentImagePicker(controller: UIImagePickerController, source: UIImagePickerController.SourceType) {
        controller.delegate = self
        controller.sourceType = source
        self.present(controller, animated: true)
               
    } // presentImagePicker
    
    
    func  imagePickerController(_ _picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        else {
            return self.imagePickerControllerDidCancel(_picker: _picker)
        }
        self.selectedImage = image
        
        _picker.dismiss(animated: true){
            _picker.delegate = nil
            self.imagePickerController = nil
        }
    } // imagePickerController
    
    private func imagePickerControllerDidCancel(_picker: UIImagePickerController) {
        _picker.dismiss(animated: true) {
            _picker.delegate = nil
            self.imagePickerController = nil
            
        }
    } // imagePickerControllerDidCancel
    
    @IBAction func removeImageButtonAction(_ sender: Any) {
        self.selectedImage = nil
        self.removeImageButton.isEnabled = false
        self.removeImageButton.alpha = 0.5
        
        self.filter1Button.isEnabled = false
        self.filter1Button.alpha = 0.5
        
        self.filter2Button.isEnabled = false
        self.filter2Button.alpha = 0.5
        
        self.filter3Button.isEnabled = false
        self.filter3Button.alpha = 0.5
        
        self.filter4Button.isEnabled = false
        self.filter4Button.alpha = 0.5
        
        self.filter5Button.isEnabled = false
        self.filter5Button.alpha = 0.5
        
        self.filter6Button.isEnabled = false
        self.filter6Button.alpha = 0.5
        
        self.filter7Button.isEnabled = false
        self.filter7Button.alpha = 0.5
        
        self.filter8Button.isEnabled = false
        self.filter8Button.alpha = 0.5
        
        self.filter9Button.isEnabled = false
        self.filter9Button.alpha = 0.5
        
        self.filter10Button.isEnabled = false
        self.filter10Button.alpha = 0.5
        
        self.filter11Button.isEnabled = false
        self.filter11Button.alpha = 0.5
        
        self.filter12Button.isEnabled = false
        self.filter12Button.alpha = 0.5
        
        self.savePhotoButton.isEnabled = false
        self.savePhotoButton.alpha = 0.5
    } // removeImageButtonAction to remove the selected image and disable all the button expt add photo
    
    
    func mergeTwoImage(originalImage:UIImage,filterImage:UIImage){
            
            let size = CGSize(width:originalImage.size.width, height: originalImage.size.height)

            UIGraphicsBeginImageContext(size)
            
            let area = CGRect(x: 0, y: 0, width: size.width, height: size.height)
            originalImage.draw(in: area)
            filterImage.draw(in: area, blendMode:  .normal, alpha: 1)
            let finalImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
        
            selectedImageView.image = finalImage
            
        } // mergeTwoImage (selected image and any filter)
    
    @IBAction func applyFilter1(_ sender: Any) {
        mergeTwoImage(originalImage: tempImage!, filterImage: filter1.image!)
    } // applyFilter1
    
    @IBAction func applyFilter2(_ sender: Any) {
        mergeTwoImage(originalImage: tempImage!, filterImage: filter2.image!)
    } // applyFilter2
    
    @IBAction func applyFilter3(_ sender: Any) {
        mergeTwoImage(originalImage: tempImage!, filterImage: filter3.image!)
    } // applyFilter3
    
    @IBAction func applyFilter4(_ sender: Any) {
        mergeTwoImage(originalImage: tempImage!, filterImage: filter4.image!)
    } // applyFilter4
    
    @IBAction func applyFilter5(_ sender: Any) {
        mergeTwoImage(originalImage: tempImage!, filterImage: filter5.image!)
    } // applyFilter5
    
    @IBAction func applyFilter6(_ sender: Any) {
        mergeTwoImage(originalImage: tempImage!, filterImage: filter6.image!)
    } // applyFilter6
    
    @IBAction func applyFilter7(_ sender: Any) {
        mergeTwoImage(originalImage: tempImage!, filterImage: filter7.image!)
    } // applyFilter7
    
    @IBAction func applyFilter8(_ sender: Any) {
        mergeTwoImage(originalImage: tempImage!, filterImage: filter8.image!)
    } // applyFilter8
    
    @IBAction func applyFilter9(_ sender: Any) {
        mergeTwoImage(originalImage: tempImage!, filterImage: filter9.image!)
    } // applyFilter9
    
    @IBAction func applyFilter10(_ sender: Any) {
        mergeTwoImage(originalImage: tempImage!, filterImage: filter10.image!)
    } // applyFilter10
    
    @IBAction func applyFilter11(_ sender: Any) {
        mergeTwoImage(originalImage: tempImage!, filterImage: filter11.image!)
    } // applyFilter11
    
    @IBAction func applyFilter12(_ sender: Any) {
        mergeTwoImage(originalImage: tempImage!, filterImage: filter12.image!)
    } // applyFilter12
    
    @IBAction func savePhoto(_ sender: Any) {
        if let selectedImage = UIImage(named: "image.png"){
            if let data = selectedImage.pngData(){
            let filename = getDocumentsDirectory().appendingPathComponent("copy.png")
            try? data.write(to: filename)
            }
        }
        let alert = UIAlertController(title: "Saved", message: "Your image has been saved", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    } // savePhoto
    
    func  getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    } // getDocumentsDirectory
    
} // ViewController
