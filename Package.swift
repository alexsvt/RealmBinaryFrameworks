// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let realmVersion = "10.28.2"

func buildTargets() -> [Target] {
    let baseURL = "https://github.com/alexsvt/RealmBinaryFrameworks/releases/download/\(realmVersion)"
    let realmChecksum = "3a96e1123761b47c491ef0e2fb60a03ad110e91bc93c1a1d9a1134eb24932e46"
    let realmSwiftChecksum = "ebb6c53d233b364f488770379d690781dc2fe89ac43df535137572853f2fdef4"

    return [
        .binaryTarget(
            name: "Realm",
            url: "\(baseURL)/Realm.xcframework.zip",
            checksum: realmChecksum
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "\(baseURL)/RealmSwift.xcframework.zip",
            checksum: realmSwiftChecksum
        )
    ]
}

let package = Package(
    name: "RealmBinaryFrameworks",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Realm",
            targets: ["Realm"]),
        .library(
            name: "RealmSwift",
            targets: ["RealmSwift"])
    ],
    targets: buildTargets()
)
