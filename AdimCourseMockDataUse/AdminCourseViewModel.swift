//
//  AdminCourseViewModel.swift
//  AdimCourseMockDataUse
//
//  Created by Guru Mahan on 06/02/23.
//

import Foundation

class AdminCourseViewModel: ObservableObject {
    @Published var dataList : AdminCourseModel? = AdminCourseModel.loadMockData()
    
    func dateFormet(session: CourseSessionDetailDatum?)-> String {
        let date = "\(DateManager.shared.utcToLocal(session?.startDate ?? "", from: "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", to: " MMM dd yyyy ")) - \(DateManager.shared.utcToLocal(session?.endDate ?? "", from: "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", to: " MMM dd yyyy "))"
        
        return date
    }
}

            
//let date = "\(DateManager.shared.utcToLocal(session?.startDate ?? "", from: "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", to: " MMM dd yyyy h:mm a")) - \(DateManager.shared.utcToLocal(session?.endDate ?? "", from: "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", to: " MMM dd yyyy h:mm a"))"
