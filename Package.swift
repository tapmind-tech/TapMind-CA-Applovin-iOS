// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TapMindALAdapter",
    platforms: [
        .iOS(.v13) // The minimum iOS version your SDK supports
    ],
    products: [
        // This is what users will see when they add the package
        .library(
            name: "TapMindALAdapter",
            targets: ["TapMindALAdapterTarget"])
    ],
    dependencies: [
        // Google Mobile Ads official Swift Package
        .package(
            url: "https://github.com/kishantuvoc/TapMindSDK.git",
            from: "1.1.0"
        )
    ],
    targets: [
        // 1. The actual binary framework
        .binaryTarget(
            name: "TapMindALAdapterBinary",
            path: "TapMindALAdapter.xcframework"
        ),
        // 2. The wrapper target that bridges your binary and Google Mobile Ads
        .target(
            name: "TapMindALAdapterTarget",
            dependencies: [
                .target(name: "TapMindALAdapterBinary"),
                .product(name: "TapMindSDK", package: "TapMindSDK")
            ],
            path: "Sources/TapMindALAdapter" // Points to your physical folder
        )
    ]
)
