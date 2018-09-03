//
//  ViewController.swift
//  Language Practice
//
//  Created by Yono Mittlefehldt on 2018-08-26.
//  Copyright © 2018 toojuice, LLC. All rights reserved.
//

import UIKit
import Speech

class ViewController: UIViewController {

    @IBOutlet weak var phraseLabel: UILabel!
    @IBOutlet weak var recordButton: RecordButton!
    
    let defaultColor = UIColor(red: 239.0 / 255, green: 239.0 / 255, blue: 244.0 / 255, alpha: 1.0)
    let correctColor = UIColor(red: 220.0 / 255, green: 233.0 / 255, blue: 213.0 / 255, alpha: 1.0)
    let incorrectColor = UIColor(red: 238.0 / 255, green: 205.0 / 255, blue: 205.0 / 255, alpha: 1.0)

    let language = "fr-FR"
    let phrases = ["le lapin", "la souris", "le lupo", "bonjour", "je ne sais pas"]
    
    var phraseIndex = 0

    let synthesizer = AVSpeechSynthesizer()
    
    var speechRecognizer: SFSpeechRecognizer?
    
    var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    let audioEngine = AVAudioEngine()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        phraseLabel.text = phrases[phraseIndex]
        
        speechRecognizer = SFSpeechRecognizer(locale: Locale(identifier: language))
        speechRecognizer?.delegate = self

        recordButton.isEnabled = false
        
        SFSpeechRecognizer.requestAuthorization { (authStatus) in
            
            var isButtonEnabled = false
            
            switch authStatus {
            case .authorized:
                isButtonEnabled = true
                
            case .denied:
                print("User denied access to speech recognition")
                
            case .restricted:
                print("Speech recognition restricted on this device")
                
            case .notDetermined:
                print("Speech recognition not yet authorized")
            }
            
            OperationQueue.main.addOperation() {
                self.recordButton.isEnabled = isButtonEnabled
            }
        }
    }
}

// MARK: Text to speech methods

extension ViewController {
    
    @IBAction func playTapped(_ sender: UIButton) {
        
        if let phrase = phraseLabel.text {
            let utterance = AVSpeechUtterance(string: phrase)
            utterance.voice = AVSpeechSynthesisVoice(language: language)
            
            synthesizer.speak(utterance)
        }
    }
}

// MARK: Speech recognition methods

extension ViewController: SFSpeechRecognizerDelegate {
    
    func speechRecognizer(_ speechRecognizer: SFSpeechRecognizer, availabilityDidChange available: Bool) {
        recordButton.isEnabled = available
    }
    
    @IBAction func recordButtonTapped(_ sender: UIButton) {
        if recordButton.isRecording {
            stopRecording()
        } else {
            startRecording()
        }
    }

    func startRecording() {
        
        recognitionRequest = SFSpeechAudioBufferRecognitionRequest()

        guard let recognitionRequest = recognitionRequest else {
            fatalError("Unable to create an SFSpeechAudioBufferRecognitionRequest object")
        }
        
        let inputNode = audioEngine.inputNode
        
        let recordingFormat = inputNode.outputFormat(forBus: 0)
        
        inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer, _) in
            recognitionRequest.append(buffer)
        }
        
        recognitionRequest.shouldReportPartialResults = false
        
        _ = speechRecognizer?.recognitionTask(with: recognitionRequest, resultHandler: { (result, error) in
            
            let isFinal = result?.isFinal ?? false
            
            if result != nil {
                
                let bestResult = result?.bestTranscription.formattedString.lowercased()
                
                if self.phraseLabel.text?.lowercased() == bestResult {
                    self.phraseLabel.backgroundColor = self.correctColor
                } else {
                    self.phraseLabel.backgroundColor = self.incorrectColor
                }
            }
            
            if error != nil || isFinal {
                self.audioEngine.stop()
                inputNode.removeTap(onBus: 0)
                
                self.recognitionRequest = nil
                
                self.recordButton.isEnabled = true
            }
        })
        
        do {
            try audioEngine.start()
            recordButton.isRecording = true
            phraseLabel.backgroundColor = defaultColor
        } catch {
            print("audioEngine couldn't start because of an error: \(error.localizedDescription)")
        }
    }
    
    func stopRecording() {
        recordButton.isEnabled = false
        recordButton.isRecording = false
        audioEngine.stop()
        recognitionRequest?.endAudio()
    }
}

// MARK: Button methods

extension ViewController {
    
    @IBAction func nextTapped(_ sender: UIButton) {
        phraseIndex = (phraseIndex + 1) % phrases.count
        phraseLabel.text = phrases[phraseIndex]
        phraseLabel.backgroundColor = defaultColor
    }
    
    @IBAction func prevTapped(_ sender: UIButton) {
        phraseIndex = (phraseIndex + phrases.count - 1) % phrases.count
        phraseLabel.text = phrases[phraseIndex]
        phraseLabel.backgroundColor = defaultColor
    }
}

