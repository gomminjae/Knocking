//
//  CalendarView.swift
//  Knocking
//
//  Created by 권민재 on 2023/07/12.
//

import UIKit
import FSCalendar


class CalendarView: UIView {
    
    let calendarView = FSCalendarHeaderView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
