// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let realmVersion = "10.28.2"

func buildTargets() -> [Target] {
    let baseURL = "https://github.com/alexsvt/RealmBinaryFrameworks/releases/download/\(realmVersion)"
    let realmChecksum = "80abd6d4b375e79bd4cf08a75da8c015f98c55cbfe3cd3d2c28571240a47f42a"

    return [
        .binaryTarget(
            name: "Realm",
            url: "\(baseURL)/Realm.xcframework.zip",
            checksum: realmChecksum
        )
    ]
}

let package = Package(
    name: "BinaryRealmFramework",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "Realm",
            targets: ["Realm"])
    ],
    targets: buildTargets()
)
