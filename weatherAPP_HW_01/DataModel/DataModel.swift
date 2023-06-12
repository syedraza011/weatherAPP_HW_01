//
//  DataModel.swift
//  weatherAPP_HW_01
//
//  Created by Syed Raza on 6/11/23.
//

import Foundation

struct HourlyData: Identifiable{
//    var id:ObjectIdentifier
    var id=UUID()
   
    let time: String
    let image: String
    let temperature: String
 
    
    
    static let mockData=[
        HourlyData( time: "Now",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "9AM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "10AM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "11AM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "12PM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "1PM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "2PM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "3PM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "4PM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "5PM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "6PM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "7PM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "8PM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "9PM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "10PM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "11PM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "12AM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "1AM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "2AM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "3AM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "4AM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "5AM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "6AM",image:"cloud.drizzle.fill", temperature: "54°" ),
        HourlyData( time: "7AM",image:"cloud.drizzle.fill", temperature: "54°" )
    
    ]
}

struct DayData: Identifiable {
    var id=UUID()
    let day:String
    let image:String
    let lowTemp:String
    let highTemp: String
    
    static let mockDayData=[
    DayData(day: "Today",image:"cloud.drizzle.fill", lowTemp: "50°",highTemp: "77°"),
    DayData(day: "Tue",image:"cloud.drizzle.fill", lowTemp: "34°",highTemp: "47°"),
    DayData(day: "Wed",image:"cloud.drizzle.fill", lowTemp: "34°",highTemp: "57°"),
    DayData(day: "Thu",image:"cloud.drizzle.fill", lowTemp: "50°",highTemp: "37°"),
    DayData(day: "Fri",image:"cloud.drizzle.fill", lowTemp: "30°",highTemp: "47°"),
    DayData(day: "Sat",image:"cloud.drizzle.fill", lowTemp: "30°",highTemp: "57°"),
    DayData(day: "Sun",image:"cloud.drizzle.fill", lowTemp: "40°",highTemp: "77°"),
    DayData(day: "Mon",image:"cloud.drizzle.fill", lowTemp: "34°",highTemp: "57°"),
    DayData(day: "Tue  ",image:"cloud.drizzle.fill", lowTemp: "34°",highTemp: "47°"),
    DayData(day: "Wed  ",image:"cloud.drizzle.fill", lowTemp: "34°",highTemp: "57°"),
    DayData(day: "Thu  ",image:"cloud.drizzle.fill", lowTemp: "50°",highTemp: "37°"),
    DayData(day: "Fri  ",image:"cloud.drizzle.fill", lowTemp: "30°",highTemp: "47°"),
    DayData(day: "Sat  ",image:"cloud.drizzle.fill", lowTemp: "30°",highTemp: "57°"),
    DayData(day: "Sun  ",image:"cloud.drizzle.fill", lowTemp: "40°",highTemp: "77°"),
    DayData(day: "Mon  ",image:"cloud.drizzle.fill", lowTemp: "34°",highTemp: "57°"),
    DayData(day: "Tue  ",image:"cloud.drizzle.fill", lowTemp: "34°",highTemp: "47°"),
    DayData(day: "Wed  ",image:"cloud.drizzle.fill", lowTemp: "34°",highTemp: "57°"),
    DayData(day: "Thu  ",image:"cloud.drizzle.fill", lowTemp: "50°",highTemp: "37°"),
    DayData(day: "Fri  ",image:"cloud.drizzle.fill", lowTemp: "30°",highTemp: "47°"),
    DayData(day: "Sat  ",image:"cloud.drizzle.fill", lowTemp: "30°",highTemp: "57°"),
    DayData(day: "Sun  ",image:"cloud.drizzle.fill", lowTemp: "40°",highTemp: "77°"),
    DayData(day: "Mon  ",image:"cloud.drizzle.fill", lowTemp: "34°",highTemp: "57°"),
    DayData(day: "Tue  ",image:"cloud.drizzle.fill", lowTemp: "34°",highTemp: "47°"),
    DayData(day: "Wed  ",image:"cloud.drizzle.fill", lowTemp: "34°",highTemp: "57°"),
    DayData(day: "Thu  ",image:"cloud.drizzle.fill", lowTemp: "50°",highTemp: "37°"),
    DayData(day: "Fri  ",image:"cloud.drizzle.fill", lowTemp: "30°",highTemp: "47°"),
    DayData(day: "Sat  ",image:"cloud.drizzle.fill", lowTemp: "30°",highTemp: "57°"),
    DayData(day: "Sun  ",image:"cloud.drizzle.fill", lowTemp: "40°",highTemp: "77°"),
    DayData(day: "Mon  ",image:"cloud.drizzle.fill", lowTemp: "34°",highTemp: "57°"),
    DayData(day: "Tue  ",image:"cloud.drizzle.fill", lowTemp: "34°",highTemp: "47°"),
    DayData(day: "Wed  ",image:"cloud.drizzle.fill", lowTemp: "34°",highTemp: "57°"),
    DayData(day: "Thu  ",image:"cloud.drizzle.fill", lowTemp: "50°",highTemp: "37°"),
    DayData(day: "Fri  ",image:"cloud.drizzle.fill", lowTemp: "30°",highTemp: "47°"),
    DayData(day: "Sat  ",image:"cloud.drizzle.fill", lowTemp: "30°",highTemp: "57°"),
    DayData(day: "Sun  ",image:"cloud.drizzle.fill", lowTemp: "40°",highTemp: "77°"),
    ]
}




