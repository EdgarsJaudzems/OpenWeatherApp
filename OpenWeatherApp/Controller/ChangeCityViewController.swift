//
//  ChangeCityViewController.swift
//  OpenWeatherApp
//
//  Created by Arkadijs Makarenko on 04/02/2021.
//

import UIKit

protocol ChangeCityDelegate {
    func userEnterCityName(city: String)
}

class ChangeCityViewController: UIViewController {
    @IBOutlet weak var cityTextField: DesignableTextField!
    
    var delegate: ChangeCityDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityTextField.textColor = .white

        // Do any additional setup after loading the view.
    }
    
    @IBAction func getWeatherTapped(_ sender: Any) {
        
        guard let cityName = cityTextField.text else {
            return
        }
        
        delegate?.userEnterCityName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
