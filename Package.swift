// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let realmVersion = "10.28.1"

func buildTargets() -> [Target] {
    let baseURL = "https://github.com/alexsvt/RealmBinaryFrameworks/releases/download/\(realmVersion)"
    let realmChecksum = "80abd6d4b375e79bd4cf08a75da8c015f98c55cbfe3cd3d2c28571240a47f42a"
   // let realmSwiftChecksum = "235a74900005acea87d44897b0d168384b2d18870057869f00771d98a30a97bd"

    return [
        .binaryTarget(
            name: "Realm",
            url: "\(baseURL)/Realm.xcframework.zip",
            checksum: realmChecksum
        ),
//        .binaryTarget(
//            name: "RealmSwift",
//            url: "\(baseURL)/RealmSwift.xcframework.zip",
//            checksum: realmSwiftChecksum
//        )
    ]
}

let package = Package(
    name: "BinaryRealmFramework",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Realm",
            targets: ["Realm"]),
//        .library(
//            name: "RealmSwift",
//            targets: ["RealmSwift"])
    ],
    targets: buildTargets()
)
