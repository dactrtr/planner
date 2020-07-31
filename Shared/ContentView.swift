//
//  ContentView.swift
//  Shared
//
//  Created by Dactrtr on 16-07-20.
//

import SwiftUI

let current = Calendar.current

struct ContentView: View {
    @State var isOpen = true
    @State var date = Date()
    @ObservedObject var month = updateEntry()
    
    func addEntry() {
        let day = current.component(.day, from: self.date)
        let weekDay = current.component(.weekday, from: self.date)
        
        month.updates.append(Daily(day: String(weekDay), date: String(day), sleepHours: 3.5))
    }
    let months = current.component(.month, from: Date())
    var body : some View{
        VStack(alignment:.leading){
            HStack{
                Text("\(months)")
                    .font(.system(.title,design:.rounded))
                Button(action: addEntry) {
                    Image(systemName:"house")
                }
            }
            ZStack(alignment:.top){
                VStack(alignment:.leading, spacing: 0){
                    ForEach(dailyHour) { item in
                        hourLine(hourly: item)
                    }
                }
                .opacity(0.4)
                .font(.caption)
                ScrollView(.horizontal,showsIndicators:false){
                    HStack(alignment: .top, spacing: 4){
                        ForEach (month.updates) { item in
                            GeometryReader { geometry in
                                day(daily: item)
                                    .opacity(
                                        ((geometry.frame(in: .global).minX < 36) || (geometry.frame(in: .global).maxX > 352)) ? 0 : 1)
                                    .scaleEffect(
                                        ((geometry.frame(in: .global).minX < 36) || (geometry.frame(in: .global).maxX > 352)) ? 0.6 : 1)
                                    .animation(.easeInOut)
                                
                                
                            }
                            .frame(width: 38, height: 300)
                        }
                        
                    }
                }
                .clipped()
                .padding(.leading, 20)
            }
            .padding(.top,18)
        }
        .padding(16)
        .frame(width:356)
        .background(Color("bg"))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        
    }
}

struct day: View {
    var daily: Daily
    var body: some View {
        VStack(alignment: .center, spacing:8){
            ZStack(alignment:.bottom){
                Rectangle()
                    .fill(Color("empty"))
                    .frame(width: 12, height: 206)
                    .cornerRadius(32)
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color("orange"), Color("yellow")]), startPoint: .top, endPoint: .bottom))
                    .frame(width: 12, height: CGFloat(daily.sleepHours)*206/10)
                    .cornerRadius(32)
                
            }
            Text(dayToString(day: daily.day))
                .font(.callout)
            Text(daily.date)
                .font(.system(.headline,design:.rounded))
                .frame(width:38,height:38)
                .background(Color.white.opacity(0.4))
                .cornerRadius(8)
        }
        .padding(.top,8)
    }
}

func dayToString (day: String) -> String{
    switch day {
    case "1":
        return "D"
    case "2":
        return "L"
    case "3":
        return "M"
    case "4":
        return "M"
    case "5":
        return "J"
    case "6":
        return "V"
    case "7":
        return "S"
    default:
        return "L"
    }
}

func monthToString (day: String) -> String{
    switch day {
    case "1":
        return "D"
    case "2":
        return "L"
    case "3":
        return "M"
    case "4":
        return "M"
    case "5":
        return "J"
    case "6":
        return "V"
    case "7":
        return "S"
    default:
        return "L"
    }
}

struct hourLine: View {
    var hourly : Hourly
    var body: some View {
        HStack{
            Text(hourly.hour)
                .frame(width:20,alignment:.center)
            Rectangle()
                .frame(width:300,height:1)
        }
        .frame(height:20)
    }
}




//MARK: DATAMODEL
struct dailyEntry : Identifiable{
    var id = UUID()
    var year: Int
    var month : Int
    var date : Int
    var weekDay : Int
    var sleep : Double
}

struct Daily: Identifiable{
    var id = UUID()
    var day : String
    var date : String
    var sleepHours : Double
}
struct Hourly: Identifiable{
    var id = UUID()
    var hour : String
}

let testModel = [
    dailyEntry(year: 2019, month: 6, date: 1, weekDay: 5, sleep: 1.3),
    dailyEntry(year: 2020, month: 2, date: 22, weekDay: 5, sleep: 3),
    dailyEntry(year: 2020, month: 5, date: 25, weekDay: 5, sleep: 2.9),
    dailyEntry(year: 2020, month: 5, date: 15, weekDay: 5, sleep: 6.8),
]


let julyData = [
    Daily(day: "2", date: "2", sleepHours: 10),
]

let dailyHour = [
    Hourly(hour:"10"),
    Hourly(hour:"9"),
    Hourly(hour:"8"),
    Hourly(hour:"7"),
    Hourly(hour:"6"),
    Hourly(hour:"5"),
    Hourly(hour:"4"),
    Hourly(hour:"3"),
    Hourly(hour:"2"),
    Hourly(hour:"1"),
    Hourly(hour:"0"),

]
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
