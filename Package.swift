import PackageDescription

let package = Package(name: "SVProgressHUD",
                      platforms: [.macOS(.v10_12),
                                  .iOS(.v10),
                                  .tvOS(.v10),
                                  .watchOS(.v3)],
                      products: [.library(name: "SVProgressHUD",
                                          targets: ["SVProgressHUD"])],
                      targets: [.target(name: "SVProgressHUD",
                                        path: "Source",
                                        linkerSettings: []),
                                .testTarget(name: "SVProgressHUDTests",
                                            dependencies: ["SVProgressHUD"],
                                            path: "Tests")],
                      swiftLanguageVersions: [.v5])
