// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "YYText",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "YYText",
            targets: ["YYText"]
        )
    ],
    targets: [
        .target(
            name: "YYText",
            path: "YYText",
            publicHeadersPath: "include",
            cSettings: [
                .define("YYTEXT_ENABLE_SHORTHAND", to: "1")
            ],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreText"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("Accelerate"),
                .linkedFramework("MobileCoreServices")
            ]
        )
    ]
)
