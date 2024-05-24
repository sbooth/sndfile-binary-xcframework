// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "sndfile-binary-xcframework",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v14),
	],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "sndfile",
			targets: [
				"sndfile",
			]),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.binaryTarget(
			name: "sndfile",
			url: "https://github.com/sbooth/sndfile-binary-xcframework/releases/download/0.1.0/sndfile.xcframework.zip",
			checksum: "a158c0a9106e8dca35a32cd2d7262dbda5e5fc62c99c7751cc2af97303dce966"),
	]
)
