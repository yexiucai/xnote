//
//  CourseListView.swift
//  xnote
//
//  Created by yexiucai on 2023/06/25.
//

import SwiftUI



struct CourseListView_Previews: PreviewProvider {
    static var previews: some View {
        CourseListView()
    }
}



struct ListView: View {
    @Binding var selectedItem: String?
    let items: [String] = ["一年生","二年生","三年生","四年生","五年生","六年生","中一","中二","中三","高一","高二","高三"]
    
    var body: some View {
        List(selection: $selectedItem) {
            ForEach(items, id: \.self) { item in
                NavigationLink(value: item) {
                    Text(item)
                }
            }
        }
    }
}


struct CourseListView: View {
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(subjects, id: \.id) { subject in
                        NavigationLink(destination: QuestionListView(subject: subject)) {
                            
                            VStack{
                                
                                Image(subject.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 150, height: 150)
                                Text(subject.name)
                            }
                        }
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
            }
            .navigationBarTitle("科目一覧")
            


            
            Spacer()
        }
        .navigationBarTitle("Detail")
    }
    
}




struct Subject {
    let id = UUID()
    let name: String
    let imageName: String
    let grade: Int
    let description: String
    let difficultyLevel: Int
}

let subjects: [Subject] = [
    Subject(name: "数学", imageName: "sugaku", grade : 5 , description: ".....", difficultyLevel: 3),
    Subject(name: "国語", imageName: "kokugo", grade : 5 , description: ".....", difficultyLevel: 2),
    Subject(name: "理科", imageName: "lika", grade : 5 , description: ".....", difficultyLevel: 4),
    Subject(name: "地理", imageName: "tili", grade : 5 , description: ".....", difficultyLevel: 3),
    Subject(name: "歴史", imageName: "rekisi", grade : 5 , description: ".....", difficultyLevel: 2),
    Subject(name: "社会", imageName: "syakai", grade : 5 , description: ".....", difficultyLevel: 4),
    Subject(name: "物理", imageName: "butuli", grade : 5 , description: ".....", difficultyLevel: 3),
    Subject(name: "化学", imageName: "kagaku", grade : 5 , description: ".....", difficultyLevel: 2),
    Subject(name: "生物", imageName: "seibutu", grade : 5 , description: ".....", difficultyLevel: 4),
    Subject(name: "英語", imageName: "eigo", grade : 5 , description: ".....", difficultyLevel: 4),
    Subject(name: "数学", imageName: "sugaku", grade : 5 , description: ".....", difficultyLevel: 3),
    Subject(name: "国語", imageName: "kokugo", grade : 5 , description: ".....", difficultyLevel: 2),
    Subject(name: "理科", imageName: "lika", grade : 5 , description: ".....", difficultyLevel: 4),
    Subject(name: "地理", imageName: "tili", grade : 5 , description: ".....", difficultyLevel: 3),
    Subject(name: "歴史", imageName: "rekisi", grade : 5 , description: ".....", difficultyLevel: 2),
    Subject(name: "社会", imageName: "syakai", grade : 5 , description: ".....", difficultyLevel: 4),
    Subject(name: "物理", imageName: "butuli", grade : 5 , description: ".....", difficultyLevel: 3),
    Subject(name: "化学", imageName: "kagaku", grade : 5 , description: ".....", difficultyLevel: 2),
    Subject(name: "生物", imageName: "seibutu", grade : 5 , description: ".....", difficultyLevel: 4),
    Subject(name: "英語", imageName: "eigo", grade : 5 , description: ".....", difficultyLevel: 4),
    // 其他学科...
]


