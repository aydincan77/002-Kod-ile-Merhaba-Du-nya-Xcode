//
//  ViewController.swift
//  Kod ile Merhaba Dünya
//
//  Created by Aydın Can on 16.05.2018.
//  Copyright © 2018 CAN Soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelLbl: UILabel!
    
    // Nesneleri oluşturalım
    let etiketLbl = UILabel()
    let yazdırButonBtn = UIButton()
    let konumButonBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Ekran ölçülerini bulalım
        print(view.frame.width) // Genişlik
        print(view.frame.height) // Yükseklik
        print(view.frame.size) // ebatları
        
        // etiketLbl nesnesine özellikler atayalım
        etiketLbl.text = "Merhaba Dünya!"
        etiketLbl.backgroundColor = UIColor.cyan
        etiketLbl.textAlignment = .center
        etiketLbl.frame = CGRect(x: 0, y: 120, width: 375, height: 50)
        
        // Yazdır butonuna özellikler atayalım
        yazdırButonBtn.setTitle("Yazı Yazdır", for: UIControlState.normal)
        yazdırButonBtn.backgroundColor = UIColor.green
        yazdırButonBtn.frame = CGRect(x: 16, y: 190, width: 343, height: 50)
        yazdırButonBtn.addTarget(self, action: #selector(yazdırButonAction), for: UIControlEvents.touchUpInside)
        
        // Konum butonuna özellikler atayalım
        konumButonBtn.setTitle("Konum Yazdır", for: UIControlState.normal)
        konumButonBtn.backgroundColor = UIColor.green
        konumButonBtn.frame = CGRect(x: 16, y: 260, width: 343, height: 50)
        konumButonBtn.addTarget(self, action: #selector(konumYazAction), for: UIControlEvents.touchUpInside)
        
        // Nesneleri arayüze ekleyelim, görünür olmasını sağlayalım
        view.addSubview(etiketLbl)
        view.addSubview(yazdırButonBtn)
        view.addSubview(konumButonBtn)
        
        
        print("Uygulama Yüklendi")
    }

    // Yazdır butonunun selector'unu oluşturalım
    @objc func yazdırButonAction(sender: UIButton!) {
        
        labelLbl.text = "Merhaba Dünya! - 1"
        etiketLbl.text = "Merhaba Dünya! - 2"
        
        print("Butona basıldı, yazılar yazıldı.")
    }
    
    // Konum butonunun selector'unu oluşturalım
    @objc func konumYazAction(sender: UIButton!) {
        
        labelLbl.text = "\(labelLbl.frame.width) - \(labelLbl.frame.height) - \(labelLbl.frame.standardized)"
        etiketLbl.text = "\(etiketLbl.frame.width) - \(etiketLbl.frame.height) - \(etiketLbl.frame.standardized)"
        yazdırButonBtn.setTitle("\(yazdırButonBtn.frame.width) - \(yazdırButonBtn.frame.height) - \(etiketLbl.frame.standardized)", for: UIControlState.normal)
        
        print("Butona basıldı, konumlar yazıldı.")
    }


}

