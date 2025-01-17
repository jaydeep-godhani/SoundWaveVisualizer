//
//  ViewController.swift
//  SoundWaveVisualizer
//
//  Created by Jaydeep Godhani on 17/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var equalizerView: EqualizerView!
    
    // MARK: - View Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.initialConfig()
    }
    
    // MARK: - Selectors
    
    // Play Button Action
    @IBAction func playButtonAction(_ sender: UIButton) {
        self.view.endEditing(true)
        self.equalizerView.setState(.play, animated: true)
    }
    
    // Pause Button Action
    @IBAction func pauseButtonAction(_ sender: UIButton) {
        self.view.endEditing(true)
        self.equalizerView.setState(.pause, animated: true)
    }
    
    // MARK: - Helper Functions
    
    // Initial Config
    func initialConfig() {
        self.setupEqualizerView()
    }
    
    // Setup EquilazerView
    private func setupEqualizerView() {
        self.equalizerView.barCount = 5
        self.equalizerView.barSpacing = 4
        self.equalizerView.tintColor = .systemBlue
        self.equalizerView.setState(.play, animated: true)
    }
    
}
