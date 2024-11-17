////
////  PracticeView.swift
////  SwiftPractice
////
////  Created by Austin Hall on 9/7/23.
////
//
//import SwiftUI
//
//struct PracticeView: View {
//    @State private var selectedCategoryId: MenuItem.ID?
//    private var dataModel = iOSDevResources()
//
//    var body: some View {
//        NavigationStack{
//            List(dataModel.mainMenuItems, selection: $selectedCategoryId) { item in
//                NavigationLink(value: item){
//                    Label{ Text(item.name).bold() } icon: { Image(systemName: item.image) }
//                        .font(.title3)
//                }
//            }.navigationDestination(for: MenuItem.self){ park in
//                if let selectedCategoryId,
//                   let subMenuItems = dataModel.subMenuItems(for: selectedCategoryId) {
//                    List(subMenuItems) { item in
//                        if let url = item.url{
//                            let unwrappedURL = URL(string: url)
//                            if let unURL = unwrappedURL{
//                                Link(destination: unURL){
//                                    VStack(alignment: .leading){
//                                        Text(item.name)
//                                            .bold()
//                                        Text(url)
//                                            .font(.caption2)
//                                            .foregroundColor(.primary)
//                                    }
//                                }
//                            }
//                        }
//                    }.navigationTitle(park.name)
//                        .navigationBarTitleDisplayMode(.inline)
//                }
//            }
//        }
//    }
//}
//
//struct iOSDevResources {
//    let mainMenuItems = {
//        let coursesMenuItems = [
//            MenuItem(name: "Hacking With Swift", url: "https://www.hackingwithswift.com/100", image: "play.rectangle"),
//            MenuItem(name: "CS 193p Stanford", url: "https://cs193p.sites.stanford.edu", image: "play.rectangle"),
//            MenuItem(name: "Stewart Lynch", url: "https://www.youtube.com/StewartLynch", image: "play.rectangle"),
//            MenuItem(name: "Kodeco (Ray Wenderlich)", url: "https://www.kodeco.com", image: "play.rectangle"),
//            MenuItem(name: "Swiftul Thinking", url: "https://www.youtube.com/c/swiftfulthinking", image: "play.rectangle"),
//            MenuItem(name: "Vincent Pradeilles", url: "https://www.swiftwithvincent.com", image: "play.rectangle"),
//            MenuItem(name: "Flo Writes Code", url: "https://www.youtube.com/FlowritesCode", image: "play.rectangle"),
//            MenuItem(name: "Tunds Dev", url: "https://tunds.dev", image: "play.rectangle")
//        ]
//        let newsletterMenuItems = [
//            MenuItem(name: "iOS Dev Weekly", url: "https://iosdevweekly.com", image: "doc.richtext"),
//            MenuItem(name: "SwiftLee Weekly", url: "https://www.avanderlee.com", image: "doc.richtext"),
//            MenuItem(name: "Swift Evolution Monthly", url: "https://se-monthly.flinedev.com", image: "doc.richtext"),
//            MenuItem(name: "SwiftUI Weekly", url: "http://weekly.swiftwithmajid.com", image: "doc.richtext"),
//            MenuItem(name: "iOS Code Review", url: "https://newsletter.ioscodereview.com", image: "doc.richtext"),
//            MenuItem(name: "Swiftly Rush Weekly", url: "https://swiftlyrush.curated.co", image: "doc.richtext"),
//            MenuItem(name: "iOS Dev Tools", url: "https://iosdev.tools", image: "doc.richtext")
//        ]
//
//        let websiteMenuItems = [
//            MenuItem(name: "Hacking With Swift", url: "https://www.hackingwithswift.com/", image: "globe"),
//            MenuItem(name: "Kodeco", url: "https://www.kodeco.com/ios/articles", image: "globe"),
//            MenuItem(name: "AppCoda", url: "https://www.appcoda.com", image: "globe"),
//            MenuItem(name: "Swift With Majid", url: "https://swiftwithmajid.com", image: "globe"),
//            MenuItem(name: "Swift by Sundell", url: "https://www.swiftbysundell.com", image: "globe"),
//            MenuItem(name: "NS Hipster", url: "https://nshipster.com", image: "globe"),
//            MenuItem(name: "ObjC Blog", url: "https://www.objc.io", image: "globe"),
//            MenuItem(name: "Nil Coalescing", url: "https://nilcoalescing.com/blog/", image: "globe"),
//            MenuItem(name: "Fivestars", url: "https://www.fivestars.blog", image: "globe"),
//            MenuItem(name: "Daniel Saidi", url: "https://danielsaidi.com/blog/", image: "globe"),
//            MenuItem(name: "Use Your Loaf", url: "https://danielsaidi.com/blog/", image: "globe"),
//            MenuItem(name: "Donny Wals", url: "https://www.donnywals.com/the-blog/", image: "globe")
//        ]
//        let documentationMenuItems = [
//            MenuItem(name:"Apple Developer", url:"https://developer.apple.com/documentation/", image: "doc.plaintext"),
//            MenuItem(name:"Human Interface Guidelines", url:"https://developer.apple.com/design/human-interface-guidelines/guidelines/overview", image: "doc.plaintext")
//        ]
//        // Top menu items
//        let topMenuItems = [
//            MenuItem(name: "Courses", image: "play.rectangle", subMenuItems: coursesMenuItems),
//            MenuItem(name: "Newsletters", image: "doc.richtext", subMenuItems: newsletterMenuItems),
//            MenuItem(name: "Websites", image: "globe", subMenuItems: websiteMenuItems),
//            MenuItem(name: "Documentation", image: "doc.plaintext", subMenuItems: documentationMenuItems)
//        ]
//        return topMenuItems
//    }()
//
//    func subMenuItems(for id: MenuItem.ID) -> [MenuItem]? {
//        guard let menuItem = mainMenuItems.first(where: { $0.id == id }) else {
//            return nil
//        }
//
//        return menuItem.subMenuItems
//    }
//
//    func menuItem(for categoryID: MenuItem.ID, itemID: MenuItem.ID) -> MenuItem? {
//
//        guard let subMenuItems = subMenuItems(for: categoryID) else {
//            return nil
//        }
//
//        guard let menuItem = subMenuItems.first(where: { $0.id == itemID }) else {
//            return nil
//        }
//
//        return menuItem
//    }
//}
//
//struct MenuItem {
//    var ID: Int
//    var name: String
//    var url: String
//    var image: String
//    var subMenuItems: [MenuItem]
//
//    init(id: Int, name: String, url: String, image: String) {
//        self.ID = id
//        self.name = name
//        self.url = url
//        self.image = image
//    }
//
//    init(id: UUID = UUID(), name: String, image: String, subMenuItems: [MenuItem]) {
//        self.name = name
//        self.image = image
//        self.subMenuItems = subMenuItems
//    }
//}
//
//struct PracticeView_Previews: PreviewProvider {
//    static var previews: some View {
//        PracticeView()
//    }
//}
