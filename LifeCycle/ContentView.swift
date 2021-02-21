//
//  ContentView.swift
//  LifeCycle
//
//  Created by Tiffany Cai on 2/19/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        VStack {
            SearchBar(text: searchText)
            
            VStack (alignment: .center, spacing: 10) {

                HStack(spacing: 10) {
                    MenuView(image: "calendar.circle.fill", title:"Today", count: "1")
                    MenuView(image: "clock.fill", title:"Upcoming", count: "2")
                }
                HStack(spacing: 10) {
                    MenuView(image: "tray.circle.fill", title:"View All", count: "8")
                    MenuView(image: "pencil.circle.fill", title:"Notes", count: "3")
                }
            }
            
            HStack {
                Text("My Lists")
                    .font(.title)
                    .bold()
                Spacer()
            }.padding([.all], 8.0)
            
            VStack (spacing: 10) {
                ListView(icon: "house.fill", title:"House", count: "5")
                ListView(icon: "car.fill", title:"Car", count: "2")
                ListView(icon: "bicycle", title:"Bike", count: "1")
            }.cornerRadius(8.0)
            
            Spacer()
            
            HStack {
                Spacer()
                Button(action: {
                    
                }, label: {
                   // Image("plus.circle.fill")
                    Text("Add List")
                        .font(.body)
                        .bold()
                })
            }.padding()
            .background(Color.gray.opacity(0.1))
            
        }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
    
    /*
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
        List {
            ForEach(items) { item in
                Text("Item at \(item.timestamp!, formatter: itemFormatter)")
            }
            .onDelete(perform: deleteItems)
        }
        .toolbar {
            #if os(iOS)
            EditButton()
            #endif

            Button(action: addItem) {
                Label("Add Item", systemImage: "plus")
            }
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}*/

