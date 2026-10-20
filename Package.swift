// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnyThinkMediationFyberAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AnyThinkMediationFyberAdapter",
            targets: ["AnyThinkMediationFyberAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM.git", exact: "8.4.7")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkFyberAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkFyberAdapter/8.4.7.2.9/AnyThinkFyberAdapter-8.4.7.2.9.zip",
            checksum: "3bc6da1bd7fab9a85f3d48ba375913a3311de3906612cb423183c683e279bffc"
        ),
        .target(
            name: "AnyThinkMediationFyberAdapterTarget",
            dependencies: [
                "AnyThinkFyberAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "DTExchangeSDK", package: "DTExchangeSDK-iOS-SPM")
            ],
            path: "Sources/AnyThinkMediationFyberAdapterTarget"
        )
    ]
)
