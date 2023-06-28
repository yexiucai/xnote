//
//  ContentView.swift
//  xnote
//
//  Created by yexiucai on 2023/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedItem: String? = nil
    @State var index = 0
    var body: some View {

        VStack{
            ZStack{
                if self.index == 0 {
                    Color.black.opacity(0.05).edgesIgnoringSafeArea(.top)
                    NavigationView {
                        ListView(selectedItem: $selectedItem)
                        if let selectedItem = selectedItem {
                            CourseListView()
                                .navigationBarTitle(selectedItem)
                        }
                        
                    }
                    
                }
                else if self.index == 1 {
                    Color.red.edgesIgnoringSafeArea(.top)
                }
                else if self.index == 2 {
                    Color.green.edgesIgnoringSafeArea(.top)
                }
                else if self.index == 3{
                    Color.yellow.edgesIgnoringSafeArea(.top)
                }
                else{
                    Color.blue.edgesIgnoringSafeArea(.top)
                }
                
                
            }
            .padding(.bottom, -50)
            
            CustomTabs(index: self.$index)
        }
        
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomTabs : View {
    
    @Binding var index :Int
    
    var body: some View {
        HStack{
            Button(action:{
                self.index=0
            }){
                Image(systemName: "homekit")
            }
            .foregroundColor(Color.black.opacity(self.index == 0 ? 1 : 0.2))
            Spacer(minLength: 0)
            
            Button(action:{
                self.index=1
            }){
                Image(systemName: "folder.circle")
            }
            .foregroundColor(Color.black.opacity(self.index == 1 ? 1 : 0.2))
            .offset(x:10)
            Spacer(minLength: 0)
            
            Button(action: {
                self.index=4
            }){
                Image(systemName: "plus").renderingMode(.original)
            }
            .offset(y:-25)
            Spacer(minLength: 0)
            
            Button(action:{
                self.index=2
            }){
                Image(systemName: "rectangle.inset.filled.and.person.filled")
            }
            .foregroundColor(Color.black.opacity(self.index == 2 ? 1 : 0.2))
            .offset(x:-10)
            
            
            Spacer(minLength: 0)
            
            Button(action:{
                self.index=3
            }){
                Image(systemName: "person.circle")
            }
            .foregroundColor(Color.black.opacity(self.index == 3 ? 1 : 0.2))
            
        }
        .padding(.horizontal, 35)
        .padding(.top, 50)
        .background(Color.white)
        .clipShape(CShape())
    }
}

struct CShape : Shape {
    
    func path(in rect :CGRect ) -> Path {
        return Path{ path in
            
            path.move(to: CGPoint(x: 0, y: 35))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 35))
            
            path.addArc(center: CGPoint(x: rect.width / 2 , y: 35), radius: 35, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            
            
        }
    }
}


