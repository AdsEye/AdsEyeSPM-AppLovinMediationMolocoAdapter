// swift-tools-version: 5.9
// 此清单按 Flutter iOS Demo 的锁定版本生成。
import PackageDescription

let package = Package(
    name: "AppLovinMediationMolocoAdapter",
    platforms: [.iOS(.v13)],
    products: [.library(name: "AppLovinMediationMolocoAdapter", targets: ["AppLovinMediationMolocoAdapterWrapper"])],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.1"),
        .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", exact: "4.6.0"),
    ],
    targets: [
        .target(name: "AppLovinMediationMolocoAdapterWrapper", dependencies: [.target(name: "AppLovinMediationMolocoAdapter"), .product(name: "AppLovinSDK", package: "applovin-max-swift-package"), .product(name: "MolocoSDK", package: "moloco-sdk-ios-spm")]),
        .binaryTarget(name: "AppLovinMediationMolocoAdapter", url: "https://artifacts.applovin.com/ios/com/applovin/mediation/moloco-adapter/AppLovinMediationMolocoAdapter-4.6.0.0.zip", checksum: "a4929a7e31ed82119c0764dd6dc09ca8c7d77d5c9a80b9c02dec0b65c0565650"),
    ]
)
