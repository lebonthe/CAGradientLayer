//
//  ViewController.swift
//  CAGradientLayer
//
//  Created by Min Hu on 2023/9/5.
//

import UIKit


class ViewController: UIViewController {
    // 1. 黃->紅，預設的上到下方向
    @IBOutlet weak var defaultLabel: UILabel!
    @IBOutlet weak var startPointLabel: UILabel!
    @IBOutlet weak var endPointNumberLabel: UILabel!
    @IBOutlet weak var startPointNumberLabel: UILabel!
    @IBOutlet weak var endPointLabel: UILabel!
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var gradientView2: UIView!
    // 2. 黃->紅，改變方向為左到右
    @IBOutlet weak var startPoint2Label: UILabel!
    @IBOutlet weak var endPoint2NumberLabel: UILabel!
    @IBOutlet weak var startPoint2NumberLabel: UILabel!
    @IBOutlet weak var endPoint2Label: UILabel!
    @IBOutlet weak var secondText: UILabel!
    @IBOutlet weak var gradientView3: UIView!
    
    // 3. 紅->橙->黃->綠->藍->紫，改變方向為左上到右下
    @IBOutlet weak var startPoint3Label: UILabel!
    @IBOutlet weak var startPoint3NumberLabel: UILabel!
    @IBOutlet weak var endPoint3Label: UILabel!
    @IBOutlet weak var endPoint3NumberLabel: UILabel!
    @IBOutlet weak var thirdText: UILabel!
    
    // 4. 紅->橙->黃->綠->藍->紫，方向為左上到右下，改變個別漸層的位置
    @IBOutlet weak var fourthText: UILabel!
    @IBOutlet weak var gradientView4: UIView!
    @IBOutlet weak var startPoint4Label: UILabel!
    @IBOutlet weak var startPoint4NumberLabel: UILabel!
    @IBOutlet weak var endPoint4Label: UILabel!
    @IBOutlet weak var endPoint4NumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1. 黃->紅，預設的上到下方向
        // 設定 Label 們的位置大小
        defaultLabel.frame = CGRect(x: 36.5, y: 90, width: 150, height: 20)
        startPointLabel.frame = CGRect(x: 36.5, y: 70, width: 90, height: 20)
        startPointLabel.text = "start point:"
        startPointNumberLabel.frame = CGRect(x: 126.5, y: 70, width: 70, height: 20)
        endPointLabel.frame = CGRect(x: 211.5, y: 70, width: 90, height: 20)
        endPointLabel.text = "end point:"
        endPointNumberLabel.frame = CGRect(x: 296.5, y: 70, width: 80, height: 20)
        // 設定漸層
        // 設定要做漸層底圖的 gradientView 位置大小
        gradientView.frame = CGRect(x: 36.5, y: 90, width: 320, height: 180)
        // 加入提供漸層的面紗 gradientLayer，設定為 CAGradientLayer()
        let gradientLayer = CAGradientLayer()
        // 面紗設定與底圖的大小相同
        gradientLayer.frame = gradientView.bounds
        // 設定漸層顏色
        gradientLayer.colors = [UIColor.yellow.cgColor, UIColor.red.cgColor]
        // 將漸層面紗加到底圖裡
        gradientView.layer.addSublayer(gradientLayer)
        // 返回起始點的座標到 Label 中
        startPointNumberLabel.text = "\(gradientLayer.startPoint)"
        // 返回終止點的座標到 Label 中
        endPointNumberLabel.text = "\(gradientLayer.endPoint)"
        
        // 2. 黃->紅，改變方向為左到右
        startPoint2Label.frame = CGRect(x: 36.5, y: 270, width: 90, height: 20)
        startPoint2Label.text = "start point:"
        startPoint2NumberLabel.frame = CGRect(x: 126.5, y: 270, width: 70, height: 20)
        endPoint2Label.frame = CGRect(x: 211.5, y: 270, width: 90, height: 20)
        endPoint2Label.text = "end point:"
        endPoint2NumberLabel.frame = CGRect(x: 296.5, y: 270, width: 80, height: 20)
        secondText.frame = CGRect(x: 36.5, y: 290, width: 150, height: 20)
        gradientView2.frame = CGRect(x: 36.5, y: 290, width: 320, height: 180)
        let gradientLayer2 = CAGradientLayer()
        gradientLayer2.frame = gradientView2.bounds
        gradientLayer2.colors = [UIColor.yellow.cgColor, UIColor.red.cgColor]
        // 設定漸層開始與結束的座標
        gradientLayer2.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer2.endPoint = CGPoint(x: 1, y: 0)
        
        gradientView2.layer.addSublayer(gradientLayer2)
        // 回傳漸層開始與結束的座標到 Label 中顯示
        startPoint2NumberLabel.text = "\(gradientLayer2.startPoint)"
        endPoint2NumberLabel.text = "\(gradientLayer2.endPoint)"
        
        // 3. 紅->橙->黃->綠->藍->紫，改變方向為左上到右下
        startPoint3Label.frame = CGRect(x: 36.5, y: 470, width: 90, height: 20)
        startPoint3Label.text = "start point:"
        startPoint3NumberLabel.frame = CGRect(x: 126.5, y: 470, width: 70, height: 20)
        endPoint3Label.frame = CGRect(x: 211.5, y: 470, width: 90, height: 20)
        endPoint3Label.text = "end point:"
        endPoint3NumberLabel.frame = CGRect(x: 296.5, y: 470, width: 80, height: 20)
        thirdText.frame = CGRect(x: 36.5, y: 490, width: 150, height: 20)
        gradientView3.frame = CGRect(x: 36.5, y: 490, width: 320, height: 180)
        let gradientLayer3 = CAGradientLayer()
        gradientLayer3.frame = gradientView3.bounds
        // 增加顏色
        gradientLayer3.colors = [UIColor.red.cgColor,UIColor.orange.cgColor,UIColor.yellow.cgColor,UIColor.green.cgColor,UIColor.blue.cgColor,UIColor.purple.cgColor]
        // 改變方向，斜著走
        gradientLayer3.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer3.endPoint = CGPoint(x: 1, y: 1)
        
        gradientView3.layer.addSublayer(gradientLayer3)
        startPoint3NumberLabel.text = "\(gradientLayer3.startPoint)"
        endPoint3NumberLabel.text = "\(gradientLayer3.endPoint)"
     
        
        // 4. 紅->橙->黃->綠->藍->紫，方向為左上到右下，改變個別漸層的位置
        startPoint4Label.frame = CGRect(x: 36.5, y: 670, width: 90, height: 20)
        startPoint4Label.text = "start point:"
        startPoint4NumberLabel.frame = CGRect(x: 126.5, y: 670, width: 70, height: 20)
        endPoint4Label.frame = CGRect(x: 211.5, y: 670, width: 90, height: 20)
        endPoint4Label.text = "end point:"
        endPoint4NumberLabel.frame = CGRect(x: 296.5, y: 670, width: 80, height: 20)
        fourthText.frame = CGRect(x: 36.5, y: 690, width: 300, height: 60)
        fourthText.numberOfLines = 0
        gradientView4.frame = CGRect(x: 36.5, y: 690, width: 320, height: 180)
        let gradientLayer4 = CAGradientLayer()
        gradientLayer4.frame = gradientView4.bounds
        gradientLayer4.colors = [UIColor.red.cgColor,UIColor.orange.cgColor,UIColor.yellow.cgColor,UIColor.green.cgColor,UIColor.blue.cgColor,UIColor.purple.cgColor]
        gradientLayer4.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer4.endPoint = CGPoint(x: 1, y: 1)
        // 調整顏色之間漸層的位置比
        gradientLayer4.locations = [0.0,0.5,0.6,0.7,0.8,0.9,1]
        
        gradientView4.layer.addSublayer(gradientLayer4)
        startPoint4NumberLabel.text = "\(gradientLayer4.startPoint)"
        endPoint4NumberLabel.text = "\(gradientLayer4.endPoint)"
    }
}

