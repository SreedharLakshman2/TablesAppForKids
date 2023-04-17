//
//  TablesView.swift
//  TablesAppForKids
//
//  Created by IFOCUS on 4/17/23.
//

import SwiftUI

struct TablesView: View {
    var table: Int = 4
    var body: some View {
        
        VStack {
            
            VStack {
                ForEach((1...20), id: \.self) { item in
                    HStack(spacing: 5) {
                        Image("\(table)").resizable()
                        Image("x").resizable().foregroundColor(Color.indigo)
                        ForEach(Array(String(item)), id: \.self) { item in
                            HStack(spacing: 0) {
                                Image("\(item)").resizable()
                            }
                        }
                        Image("=").resizable().foregroundColor(Color.cyan).foregroundColor(Color.indigo)
                        
                        ForEach(Array(calculateAnswer(table: table, item: item)), id: \.self) { item in
                            HStack(spacing: 0) {
                                Image("\(item)").resizable()
                            }
                        }
                    }
                }

            }.padding()
            
        }.padding(.all, 0)
        
    }
    
    func calculateAnswer(table: Int, item: Int) -> String {
        var answer = table * item
        return "\(answer)"

    }
}

struct TablesView_Previews: PreviewProvider {
    static var previews: some View {
        TablesView()
    }
}
