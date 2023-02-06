//
//  AdminCourseModel.swift
//  AdimCourseMockDataUse
//
//  Created by Guru Mahan on 06/02/23.
//

import Foundation


struct AdminCourseModel: Codable {
    let status: Bool
    let message: String
    let data: [CourseSessionDetailDatum]
    let statusCode: Int

    enum CodingKeys: String, CodingKey {
        case status, message, data
        case statusCode = "status_code"
    }
}

// MARK: - Datum
struct CourseSessionDetailDatum: Codable {
    let courseSessionDetails: [CourseSessionDetail]
    let leaveCount: Int
    let rotation: String
    let warningCount: Int
    let programName: String
    let totalSessions, completedSessions: Int
    let id, courseName, warningData: String
    let subjects: [Subject]
    let isActive: Bool
    let presentCount: Int
    let year: String
    let absentCount: Int
    let courseCode, term, institutionCalendarID: String
    let absentPercentage: Int
    let endDate, level, programID, startDate: String
    let attendedSessions: Int
    let courseType: String

    enum CodingKeys: String, CodingKey {
        case courseSessionDetails
        case leaveCount
        case rotation
        case warningCount
        case programName = "program_name"
        case totalSessions, completedSessions
        case id = "_id"
        case courseName = "course_name"
        case warningData
        case subjects
        case isActive
        case presentCount
        case year
        case absentCount
        
        case courseCode = "course_code"
        case term
        case institutionCalendarID = "_institution_calendar_id"
        case absentPercentage
        case endDate = "end_date"
        case level
        case programID = "_program_id"
        case startDate = "start_date"
        case attendedSessions
        case courseType = "course_type"
    }
}

// MARK: - CourseSessionDetail
struct CourseSessionDetail: Codable {
    let pendingSessions, totalSessions: Int
    let studentGroupName: String
    let completedSessions: Int
    let courseSessions: [CourseSession]
}

// MARK: - CourseSession
struct CourseSession: Codable {
    let pendingCount, completedCount, totalCount: Int
    let deliveryName: String
}

// MARK: - Subject
struct Subject: Codable {
    let id, subjectID, subjectName: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case subjectID = "_subject_id"
        case subjectName = "subject_name"
    }
}


extension AdminCourseModel {
   static func loadMockData()-> AdminCourseModel?{
        let decoder = JSONDecoder()
        let jsonString = """
{
"status" : true,
"message" : "Data retrieved",
"data" : [
  {
   "courseSessionDetails" : [
    {
     "pendingSessions" : 3,
     "totalSessions" : 3,
     "studentGroupName" : "MG-1",
     "completedSessions" : 0,
     "courseSessions" : [
      {
       "pendingCount" : 3,
       "completedCount" : 0,
       "totalCount" : 3,
       "deliveryName" : "Lecture"
      }
     ]
    }
   ],
   "leaveCount" : 0,
   "rotation" : "no",
   "warningCount" : 0,
   "program_name" : "ELECTRONICS AND COMMUNICATION ENGINEERING-Attainment",
   "totalSessions" : 3,
   "completedSessions" : 0,
   "_id" : "639054ceb6505c32f2be2c5a",
   "course_name" : "Engineering Chemistry",
   "warningData" : "",
   "subjects" : [
    {
     "_id" : "63c7c455d598f5d443fbfffd",
     "_subject_id" : "63904e76b6505c4184be1ef2",
     "subject_name" : "Engineering chemistry"
    }
   ],
   "isActive" : true,
   "presentCount" : 0,
   "year" : "year1",
   "absentCount" : 0,
   "course_code" : "CY8151",
   "term" : "regular",
   "_institution_calendar_id" : "6390b1f6b6505c97e1be9337",
   "absentPercentage" : 0,
   "end_date" : "2025-12-11T00:00:00.000Z",
   "level" : "Level 1",
   "_program_id" : "63904d24b6505c71d4be15ee",
   "start_date" : "2025-06-08T00:00:00.000Z",
   "attendedSessions" : 0,
   "course_type" : "standard"
  },
  {
   "courseSessionDetails" : [
    {
     "pendingSessions" : 1,
     "totalSessions" : 2,
     "studentGroupName" : "MG-1",
     "completedSessions" : 1,
     "courseSessions" : [
      {
       "pendingCount" : 1,
       "completedCount" : 1,
       "totalCount" : 2,
       "deliveryName" : "Lecture"
      }
     ]
    },
    {
     "pendingSessions" : 1,
     "totalSessions" : 1,
     "studentGroupName" : "FG-1",
     "completedSessions" : 0,
     "courseSessions" : [
      {
       "pendingCount" : 1,
       "completedCount" : 0,
       "totalCount" : 1,
       "deliveryName" : "Lecture"
      }
     ]
    }
   ],
   "leaveCount" : 0,
   "rotation" : "no",
   "warningCount" : 0,
   "program_name" : "ELECTRONICS AND COMMUNICATION ENGINEERING-Attainment",
   "totalSessions" : 2,
   "completedSessions" : 1,
   "_id" : "639054ceb6505cead6be2c3f",
   "course_name" : "Communicative English",
   "warningData" : "",
   "subjects" : [
    {
     "_id" : "63c7f3a93c1cf743dbf5f52f",
     "_subject_id" : "63904e62b6505c5120be1de9",
     "subject_name" : "Communicative english"
    }
   ],
   "isActive" : true,
   "presentCount" : 0,
   "year" : "year1",
   "absentCount" : 1,
   "course_code" : "HS8151",
   "term" : "regular",
   "_institution_calendar_id" : "6390b1f6b6505c97e1be9337",
   "absentPercentage" : 50,
   "end_date" : "2025-12-11T00:00:00.000Z",
   "level" : "Level 1",
   "_program_id" : "63904d24b6505c71d4be15ee",
   "start_date" : "2025-06-08T00:00:00.000Z",
   "attendedSessions" : 0,
   "course_type" : "standard"
  },
  {
   "courseSessionDetails" : [
    {
     "pendingSessions" : 1,
     "totalSessions" : 1,
     "studentGroupName" : "MG-1",
     "completedSessions" : 0,
     "courseSessions" : [
      {
       "pendingCount" : 1,
       "completedCount" : 0,
       "totalCount" : 1,
       "deliveryName" : "Lecture"
      }
     ]
    }
   ],
   "leaveCount" : 0,
   "rotation" : "no",
   "warningCount" : 0,
   "program_name" : "ELECTRONICS AND COMMUNICATION ENGINEERING -Attainment",
   "totalSessions" : 1,
   "completedSessions" : 0,
   "_id" : "639054ceb6505c895fbe2c6c",
   "course_name" : "Engineering Graphics",
   "warningData" : "",
   "subjects" : [
    {
     "_id" : "63dd1a52e3a7e52d4609e408",
     "_subject_id" : "63904dffb6505c63ebbe1a7d",
     "subject_name" : "Engineering graphics"
    }
   ],
   "isActive" : true,
   "presentCount" : 0,
   "year" : "year1",
   "absentCount" : 0,
   "course_code" : "GE8152",
   "term" : "regular",
   "_institution_calendar_id" : "6390b1f6b6505c97e1be9337",
   "absentPercentage" : 0,
   "end_date" : "2025-12-11T00:00:00.000Z",
   "level" : "Level 1",
   "_program_id" : "63904d24b6505c71d4be15ee",
   "start_date" : "2025-06-08T00:00:00.000Z",
   "attendedSessions" : 0,
   "course_type" : "standard"
  }
],
"status_code" : 200
}
"""
        
       
        
        let jsonData = Data(jsonString.utf8)
               do {
                   let response = try decoder.decode(AdminCourseModel.self, from: jsonData)
                   print(response)
                   return response
               } catch DecodingError.keyNotFound(let key, let context) {
                   Swift.print("could not find key \(key) in JSON: \(context.debugDescription)")
               } catch DecodingError.valueNotFound(let type, let context) {
                   Swift.print("could not find type \(type) in JSON: \(context.debugDescription)")
               } catch DecodingError.typeMismatch(let type, let context) {
                   Swift.print("type mismatch for type \(type) in JSON: \(context.debugDescription)")
               } catch DecodingError.dataCorrupted(let context) {
                   Swift.print("data found to be corrupted in JSON: \(context.debugDescription)")
               } catch let error as NSError {
                   NSLog("Error in read(from:ofType:) domain= \(error.domain), description= \(error.localizedDescription)")
               }
               return nil
    }
    
}
