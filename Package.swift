// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "AnyThinkMediationConfigAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AnyThinkMediationConfigAdapter",
            targets: ["AnyThinkMediationConfigAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/taku-packages/AnyThinkiOS_SPM.git", from: "6.5.60")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkConfigAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkConfigAdapter/10.0.0/AnyThinkConfigAdapter-10.0.0.zip",
            checksum: "80f6b53a08facd950b88f3ec3ba2b1eee9e9e1b37b7aa299d7abc6f6d8d360a7"
        ),
        .target(
            name: "AnyThinkMediationConfigAdapterTarget",
            dependencies: [
                "AnyThinkConfigAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM")
            ],
            path: "Sources/AnyThinkMediationConfigAdapterTarget"
        )
    ]
)