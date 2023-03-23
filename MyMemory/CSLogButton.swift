//
//  CSLogButton.swift
//  MyMemory
//
//  Created by 이나경 on 2023/03/24.
//

import UIKit
public enum CSLogType: Int {
    case basic // 기본 로그 타입
    case title // 버튼과 타이틀을 출력
    case tag // 버튼의 태그값을 출력
}

public class CSLogButton: UIButton {
    // 로그 출력 타입
    public var logType: CSLogType = .basic
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // 버튼에 스타일 적용
        let bgImage = UIImage(named: "button-bg")!
        
        //self.setBackgroundImage(bgImage, for: .normal)
        
        self.backgroundColor = UIColor(patternImage: bgImage)
        
        //self.setBackgroundImage(UIImage(named: "button-bg"), for: .normal)
        self.tintColor = UIColor.white
        
        // 버튼의 클릭 이벤트에 logging 메소드 연결
        self.addTarget(self, action: #selector(logging(_:)), for: .touchUpInside)
    }
    
    // 로그를 출력하는 액션 메소드
    @objc func logging(_ sender: UIButton) {
        switch self.logType {
        case .basic: // 단순히 로그만 출력됨
            NSLog("버튼이 클릭되었습니다.")
        case .title: // 로그에 버튼의 타이틀을 출력한다.
            let btnTitle = sender.titleLabel?.text ?? "타이틀 없는" // btnTitle 상수에 대입하되, 그 값이 nil이라면 "타이틀 없는"이라는 문자열을 대신 사용하도록 함.
            NSLog("\(btnTitle) 버튼이 클릭되었습니다.")
        case .tag: // 로그에 버튼의 태그를 출력함
            NSLog("\(sender.tag) 버튼이 클릭되었습니다.")
        }
    }
}
