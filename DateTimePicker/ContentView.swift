//  /*
//
//  Project: DateTimePicker
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.09.2023.
//
//  */

import SwiftUI

struct AddDateViewModel: View {
    @State private var selectedDate = Date()
    @State private var isDatePickerVisible = false
    
    var body: some View {
        
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    Text("Добавить дату")
                        .padding(.vertical, 3)
                        .padding()
                        .foregroundColor(
                            Color.white)
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Image(systemName: "calendar")
                        .onTapGesture {
                            withAnimation {
                                self.isDatePickerVisible.toggle()
                            }
                        }
                        .padding()
                    
//                    Text("\(formattedDate(selectedDate))")
//                        .foregroundColor(Color.black.opacity(0.0))
                }
                .background(
                    Color.black.opacity(0.3))
                .cornerRadius(10)
                
                if isDatePickerVisible {
                    DatePicker("", selection: $selectedDate, displayedComponents: [.date])
                        .datePickerStyle(
                            GraphicalDatePickerStyle()
                        )
                        .accentColor(Color.green)
                        .labelsHidden()
                }
            }
            .padding()
        }
    }
    
    func formattedDate(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter.string(from: date)
    }
}
struct AddDateViewModel_Previews: PreviewProvider {
    static var previews: some View {
        AddDateViewModel()
    }
}

