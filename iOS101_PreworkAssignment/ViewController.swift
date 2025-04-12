//
//  ViewController.swift
//  iOS101_PreworkAssignment
//
//  Created by Morgan Martinez on 3/31/25.
//

import UIKit

class ViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	
	@IBOutlet weak var UIImage: UIImageView!
	@IBOutlet weak var UILabel3: UILabel!
	@IBOutlet weak var UILabel2: UILabel!
	@IBOutlet weak var UILabel1: UILabel!
	@IBAction func changeBackgroundColor(_ sender: UIButton) {
		func changeColor() -> UIColor{
			
			let red = CGFloat.random(in: 0...1)
			let green = CGFloat.random(in: 0...1)
			let blue = CGFloat.random(in: 0...1)
			
			return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
		}
		let randomColor = changeColor()
		view.backgroundColor = randomColor
		let textColor = changeColor()
		UILabel1.textColor = textColor
		UILabel2.textColor = textColor
		UILabel3.textColor = textColor
	}
	@IBAction func Slide(_ sender: UISlider) {
		let sliderValue = CGFloat(sender.value)
		
		let grayscaleColor = UIColor(white: sliderValue, alpha: 1.0)
		let hueColor = UIColor(hue: sliderValue, saturation: 1.0, brightness: 1.0, alpha: 1.0)
		view.backgroundColor = hueColor
		UILabel1.textColor = hueColor
		UILabel2.textColor = hueColor
		UILabel3.textColor = hueColor
	}
	}


