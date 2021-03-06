//
//  RecommendCVC.swift
//  WhereYa
//
//  Created by 홍진석 on 2021/05/26.
//

import UIKit
import SafariServices

class RecommendCVC: UICollectionViewCell {
    
    static let identifier = "RecommendCVC"
    @IBOutlet var placeImg: UIImageView!
    @IBOutlet var placeName: UILabel!
    @IBOutlet var placePhone: UILabel!
    @IBOutlet var placeDistance: UILabel!
    @IBOutlet var linkBtn: UIButton!
    
    var placeLink : String?
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 10
        //self.backgroundColor = UIColor.mainBlueColor
        placeImg.layer.cornerRadius = 20
//        placeImg.layer.borderWidth = 1
//        placeImg.clipsToBounds = true
//        placeImg.layer.borderColor = UIColor.clear.cgColor
        self.placeName.font = UIFont.myBoldSystemFont(ofSize: 14)
        self.placePhone.font = UIFont.myMediumSystemFont(ofSize: 13)
        self.placeDistance.font = UIFont.myMediumSystemFont(ofSize: 13)
        self.linkBtn.setTitle("자세히 보기", for: .normal)
        self.linkBtn.titleLabel?.font = UIFont.myMediumSystemFont(ofSize: 13)
        self.linkBtn.tintColor = .mainBlueColor
        self.layer.shadowColor = UIColor.mainBlueColor.cgColor
        self.layer.shadowOffset = CGSize(width: 1, height: 0)
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0.3
        self.layer.masksToBounds = false

        self.layer.shadowPath = UIBezierPath(roundedRect:self.contentView.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath

        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(_ name : String, _ phone: String, _ distance : String, _ url : String){
        self.placeName.text = name
        if phone.count == 0{self.placePhone.text = "전화번호 : 없음"}
        else{self.placePhone.text = "전화번호 : \(phone)"}
        self.placeDistance.text = "거리 : \(distance)m"
        self.placeLink = url
    }
    
    @IBAction func linkBtnClicked(_ sender: Any) {
        guard let url = URL(string: placeLink ?? "www.google.com")else{return}
        
        let safariViewController = SFSafariViewController(url: url)
        safariViewController.modalPresentationStyle = .fullScreen
        
        self.parentViewController?.present(safariViewController, animated: true, completion: nil)
    }
}
