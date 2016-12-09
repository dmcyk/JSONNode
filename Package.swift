import PackageDescription

let package = Package(
    name: "JSONNode",
    dependencies: [
	.Package(url: "https://github.com/vdka/JSON.git", majorVersion: 0, minor: 16),
	.Package(url: "https://github.com/vapor/node.git", majorVersion: 1),
	.Package(url: "https://github.com/vapor/core.git", majorVersion: 1)
    ]
)
