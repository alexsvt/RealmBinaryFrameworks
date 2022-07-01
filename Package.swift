// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let realmVersion = "10.28.1"

func buildTargets() -> [Target] {
    let baseURL = "https://github.com/alexsvt/RealmBinaryFrameworks/releases/download/\(realmVersion)"
    let realmChecksum = "3eb4e63d6adc80c52d81a4ebfaac708059937f3919f4a8d6291ed70fe623a4f9"

    return [
        .binaryTarget(
            name: "Realm",
            url: "\(baseURL)/Realm.xcframework.zip",
            checksum: realmChecksum
        )
    ]
}

let package = Package(
    name: "BinaryRealm",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "Realm",
            targets: ["Realm"])
    ],
    targets: buildTargets()
)
