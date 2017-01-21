//
//  ViewController.swift
//  handycast
//
//  Created by Shimon Shvartsbroit on 20/01/2017.
//  Copyright © 2017 Shimon Shvartsbroit. All rights reserved.
//

import UIKit
import Speech
import MediaPlayer

class ViewController: UIViewController {

    @IBOutlet weak var speechLabel: UILabel!
    
    private let speechRecognizer = SFSpeechRecognizer(locale: Locale(identifier: "en-US"))!
    private var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    private var recognitionTask: SFSpeechRecognitionTask?
    private let audioEngine = AVAudioEngine()
    
    
    
//    private let speechRecognizer = SFSpeechRecognizer(locale: Locale.init(identifier: "en-US"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        MPMediaLibrary.requestAuthorization { authStatus in
            
        }
    
        
        /*
        speechRecognizer.delegate = self
        
        SFSpeechRecognizer.requestAuthorization { authStatus in
            /*
             The callback may not be called on the main thread. Add an
             operation to the main queue to update the record button's state.
             */
            
            OperationQueue.main.addOperation {
//                switch authStatus {
//                case .authorized:
//                    self.recordButton.isEnabled = true
                    
//                case .denied:
//                    self.recordButton.isEnabled = false
//                    self.recordButton.setTitle("User denied access to speech recognition", for: .disabled)
                    
//                case .restricted:
//                    self.recordButton.isEnabled = false
//                    self.recordButton.setTitle("Speech recognition restricted on this device", for: .disabled)
                    
//                case .notDetermined:
//                    self.recordButton.isEnabled = false
//                    self.recordButton.setTitle("Speech recognition not yet authorized", for: .disabled)
//                }
            }
        }
         */
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func startVoiceRecognition(_ sender: UIButton) {
    }
}


extension ViewController: SFSpeechRecognizerDelegate {
    
}
