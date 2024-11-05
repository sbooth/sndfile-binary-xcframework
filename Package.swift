// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "sndfile-binary-xcframework",
	platforms: [
		.macOS(.v11),
		.iOS(.v15),
		.tvOS(.v15),
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
			url: "https://github.com/sbooth/sndfile-binary-xcframework/releases/download/0.1.1/sndfile.xcframework.zip",
			checksum: "201051b08a8af2d0ba4cd7ebc7e643733d3977205c2e3b9176ec993fe2f33de7"),
	]
)
