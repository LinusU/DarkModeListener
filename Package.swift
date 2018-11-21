// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DarkModeListener",
    products: [
        .executable(name: "dark-mode-listener", targets: ["dark-mode-listener"]),
    ],
    targets: [
        .target(name: "dark-mode-listener", path: "Sources"),
    ]
)
