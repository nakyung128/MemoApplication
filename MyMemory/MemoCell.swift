//
//  MemoCell.swift
//  MyMemory
//
//  Created by 이나경 on 2023/03/17.
//

import UIKit

class MemoCell: UITableViewCell {
    
    @IBOutlet var subject: UILabel! // 메모 제목
    @IBOutlet var contents: UILabel! // 메모 내용
    @IBOutlet var regdate: UILabel! // 등록 일자
    @IBOutlet var img: UIImageView! // 이미지
}
