//
//  QuestionDetailView.swift
//  xnote
//
//  Created by yexiucai on 2023/06/27.
//

import SwiftUI


struct QuestionDetailView: View {
    @State private var isExpanded: Bool = false
    @State private var isAnswerVisible = false

    var text : String = "問題の詳詳細の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内の詳詳細内容詳細内内容詳細内容します。"
    var body: some View {
        ScrollView{
            
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "questionmark.app")
                    Text("問題")
                        .font(.headline)

                }
                ScrollView(.vertical) {
                    Text(text)
                        .font(.body)
                        .padding()
                        .background(Color.white)
                }
                
                Image("sugaku")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                                        
                HStack{
                    Image(systemName: "note.text")
                    Text("解答")
                        .font(.headline)
                    Spacer()
                    Image(systemName: "lightbulb")
                        .onTapGesture {
                            isAnswerVisible.toggle()
                        }
                        .padding(15)
                    
                }

                
                if isAnswerVisible {
                    
                    ScrollView(.vertical) {
                        Text(text)
                            .font(.body)
                            .padding()
                            .background(Color.white)
                    }
                    Image("sugaku")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    
                    HStack{
                        Image(systemName: "note.text")
                        Text("備考")
                            .font(.headline)
                        
                    }
                    
                    ScrollView(.vertical) {
                        Text("memo for ")
                            .font(.body)
                            .padding()
                            .background(Color.white)
                    }
                }
                    
                HStack{
                    Spacer()
                    
                    Button(action: {
                        // 添加保存逻辑
                        saveQuestion()
                    }) {
                        Text("保存")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.main.bounds.width / 2)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    Spacer()
                }
                .padding(30)

                
            }
            .padding(10)
        }
        
    }
}


func saveQuestion() {
    // 添加保存逻辑
    // 在这里实现将问题保存的代码
}






struct QuestionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionDetailView()
    }
}
