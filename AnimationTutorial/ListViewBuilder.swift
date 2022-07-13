//
//  ListViewBuilder.swift
//  AnimationTutorial
//
//  Created by Mo Smad on 13/07/2022.
//

import SwiftUI

struct ListViewBuilder: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List {
            ForEach(scrums, id: \.title){ scrum in
                Card(scrum: scrum)
                    .listRowBackground(scrum.theme.mainColor)
                    
                
            }
            
        }
        .onTapGesture {
            Card(scrum: DailyScrum.sampleData[0])
        }
    }
}

struct ListViewBuilder_Previews: PreviewProvider {
    static var previews: some View {
        ListViewBuilder(scrums: DailyScrum.sampleData)
    }
}
