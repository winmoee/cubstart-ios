//
//  ContentView.swift
//  Biography
//
//  Created by Enya Do on 3/7/23.
//

import SwiftUI


struct ContentView: View {
    //PART 2B - Create booleans to track your sheet visibility
    @State private var showingSheet1 = false;
    @State private var showingSheet2 = false;
    @State private var showingSheet3 = false;
    @State private var showingSheet4 = false;

    var body: some View {
        //PART1A - Design your header
        VStack{
            Text("Hello world!")
                .bold()
                .italic()
            Image("dental")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Form {
                Button("get surgery") {
                    showingSheet1.toggle();
                     }
                .sheet(isPresented: $showingSheet1) {
                                   Sheet1()

                }
                Button("wassup") {
                    showingSheet2.toggle();
                    }
                .sheet(isPresented: $showingSheet2) {
                                   Sheet2()

                }
                
                Button("NEW STUFF") {
                    showingSheet3.toggle();
                    }
                .sheet(isPresented: $showingSheet3) {
                                   Sheet2()

                }

                
                Button("WOWOWOW") {
                    showingSheet4.toggle();
                    }
                .sheet(isPresented: $showingSheet4) {
                                   Sheet2()

                }

            }

        }
        
        
        //PART1B - Add your form containing your buttons
        
                
    }
}

//PART2A - Creating a sheet
struct Sheet1: View {
    //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        //Add some content to the body of your sheet!
        //Remember to include a button that just calls dismiss() in the action
        Text("This is sheet one")
        Text("WOWOWOWOWOWOWOWOWO")
        Button("dismiss") {
            dismiss();
        }
    }

}

struct Sheet2: View {
    //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        //Add some content to the body of your sheet!
        //Remember to include a button that just calls dismiss() in the action
        Text("BIG GBGIBGIG G SHEET 2")
        Text("WOWOWOWOWOWOWOWOWO")
        Button("dismiss") {
            dismiss();
        }
    }

}


// As a reminder the code below displays a live preview of your app, feel free to comment out or delete it!
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
