//
//  TimeView.swift
//  DateTimePicker
//
//  Created by Elaidzha Shchukin on 19.09.2023.
//

import SwiftUI

struct TimeView: View {
    @State var editingTime = Date()
    @State private var isTimePickerVisible = false
    
    var body: some View {
        
        VStack {
            
            HStack {
                Text("Выбрать время")
                    .padding(.vertical, 3)
                    .padding()
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(systemName: "clock")
                    .onTapGesture {
                        withAnimation {
                            self.isTimePickerVisible.toggle()
                        }
                    }
                    .padding()
            }
            .background(
                Color(.white))
            .cornerRadius(10)
            if isTimePickerVisible {
                DatePicker("",
                           selection: $editingTime,
                           displayedComponents: .hourAndMinute)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black.opacity(0.3))
    }
}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
    }
}
