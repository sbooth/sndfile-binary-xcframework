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
			url: "https://github.com/sbooth/sndfile-binary-xcframework/releases/download/0.1.2/sndfile.xcframework.zip",
			checksum: "9527b17b78a5fd9f686c4a30b7a51e36db3c1d750e50a76876ccc65ef794e296"),
	]
)
