// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CSE_167",
//    platforms: [
//        .macOS(.v13)
//    ],
        // Products define the executables and libraries a package produces, and make them visible to other packages.
   targets: [
        .executableTarget(
            name: "HW0",
            linkerSettings: [
                .linkedFramework("GLUT"),
                .linkedFramework("OpenGL"),
            ]
        )
    ],
    cxxLanguageStandard: .cxx11
)
