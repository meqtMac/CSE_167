// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CSE_167",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CSE_167",
            targets: ["CSE_167"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CSE_167",
            dependencies: []),
        .testTarget(
            name: "CSE_167Tests",
            dependencies: ["CSE_167"]),
        .executableTarget(
            name: "HW0",
//            cxxSettings: [
//                .headerSearchPath("/Users/meqt/Developer/Cpp/SearchPath/include")
//            ],
            linkerSettings: [
                .linkedFramework("GLUT"),
                .linkedFramework("OpenGL"),
                .linkedLibrary("freeimage", .when(platforms: [.macOS])),
                .unsafeFlags(["-L/Users/meqt/Developer/Cpp/SearchPath/lib"])
            ]
        )
    ],
    cxxLanguageStandard: .cxx11
)
