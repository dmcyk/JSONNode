import PackageDescription

let package = Package(
    name: "JSONNode",
    dependencies: [
	.Package(url: "https://github.com/vdka/JSON.git", Version(0,11,1)),
	.Package(url: "https://github.com/vapor/node.git", majorVersion: 1),
	.Package(url: "https://github.com/vapor/core.git", majorVersion: 1)
    ]
)
