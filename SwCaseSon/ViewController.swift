//
//  ViewController.swift
//  SwCaseSon
//
//  Created by KAAN YİĞİT on 10.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtDT: UITextField!
    @IBOutlet weak var lblSonuc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            print("asd")
        
        
        
        for number in 3...15 {
            print(number)
        }
        
        for number in 3..<15{
            print(number)
        }
        
        var dizi = ["asd","asd2","asd3","asd4","asd5","asd6"]
        
        let part1 = dizi[1...]
        print("dizi elemanları \(part1)")
        
        
    }


    @IBAction func btnHesapla(_ sender: Any) {
        
        let simdikiTarih = 2021
        
        let girilenTarih = txtDT.text ?? ""
        
        guard let n1 = Int(girilenTarih) else {
            lblSonuc.text = "lütfen düzgün bir değer giriniz"
            return
        }
        
        var age = simdikiTarih - n1
        
        switch (age) {
        case 0..<18:
            lblSonuc.text = "yaşınız 0 - 18 arasında"
        case 18..<45:
            lblSonuc.text = "yaşınız 18 - 45 arasında"
        case 45..<100:
            lblSonuc.text = "yaşınız 45 - 100 arasında"
        default:
            lblSonuc.text = "kara toprak"
        }
        
    }
}

