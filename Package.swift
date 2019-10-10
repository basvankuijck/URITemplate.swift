// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "URITemplate",
  platforms: [
      .iOS(.v9),
      .macOS(.v10_10),
      .tvOS(.v10),
      .watchOS(.v3)
  ],
  products: [
    .library(name: "URITemplate", targets: ["URITemplate"])
  ],
  dependencies: [
    .package(url: "https://github.com/kylef/PathKit.git", .upToNextMinor(from: "1.0.0")),
    .package(url: "https://github.com/kylef/Spectre.git", .upToNextMinor(from: "0.9.0"))
  ],
  targets: [
    .target(name: "URITemplate", dependencies: [], path: "Sources"),
    .testTarget(name: "URITemplateTests", dependencies: ["URITemplate", "PathKit", "Spectre"], path: "Tests/URITemplateTests")
  ],
  swiftLanguageVersions: [ .v4, .v5 ]
)
