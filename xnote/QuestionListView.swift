//
//  QuestionListView.swift
//  xnote
//
//  Created by yexiucai on 2023/06/25.
//

import SwiftUI



struct QuestionListView: View {
    let subject: Subject
    
    init(subject: Subject) {
        self.subject = subject
    }
    
    var body: some View {
            
        NavigationView{
            
            List(0 ..< 20) { item in
                NavigationLink(destination: QuestionDetailView()){
                    
                    HStack{
                        
                        Image("sugaku")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 90)
                            .cornerRadius(4)
                        
                        VStack(alignment:.leading , spacing: 5){
                            
                            Text("titleerereererererere")
                                .fontWeight(.semibold)
                                .minimumScaleFactor(0.7)
                            Text("内容")
                                .foregroundColor(Color.secondary)
                                .lineLimit(2)
                        }
                        
                    }
                }
            }
            .navigationTitle("算数問題一覧")
        }
        .navigationViewStyle(.stack)

    }
}


struct QuestionListView_Previews: PreviewProvider {
    static var previews: some View {
        let subject2 : Subject = subjects[0]

        QuestionListView(subject: subject2)
    }
}
