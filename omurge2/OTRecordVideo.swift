//
//  OTRecordVideo.swift
//  omurge2
//
//  Created by Omar Thanawalla on 7/12/15.
//  Copyright (c) 2015 RedCat. All rights reserved.
//

import UIKit
import MediaPlayer
import MobileCoreServices


class OTRecordVideo: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    var videoURL: NSURL!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func record(sender: AnyObject) {
        
        println("Record Video")
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera){
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.allowsEditing = true
            picker.sourceType = UIImagePickerControllerSourceType.Camera
            picker.mediaTypes = [kUTTypeMovie]
            
            self.presentViewController(picker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        self.videoURL = info[UIImagePickerControllerMediaURL] as! NSURL
        picker.dismissViewControllerAnimated(true, completion: nil)

        
    }

}
