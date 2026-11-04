# Taku (AnyThink) - iOS Base Network Config Adapter

The Taku (AnyThink) Base Network Config adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 13.0+
- Xcode 15.0+
- Taku (AnyThink) iOS Core SDK (`AnyThinkiOS`) 6.5.60+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/taku-packages/AnyThinkMediationConfigAdapter_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `x.x.x`).
4. Add the `AnyThinkMediationConfigAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/taku-packages/AnyThinkMediationConfigAdapter_SPM.git",
        exact: "x.x.x"
    )
]
```

## Included dependencies

- [`AnyThinkiOS`](https://github.com/taku-packages/AnyThinkiOS_SPM) (>= 6.5.60)

The Core SDK is resolved and linked automatically when this package is added.

## More information

- [Taku (AnyThink) iOS Integration Guide](https://help.takuad.com)
