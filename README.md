# ToastPreview SDK

[![Swift](https://img.shields.io/badge/Swift-5.5-orange.svg)](https://swift.org)
[![iOS](https://img.shields.io/badge/iOS-17.0%2B-blue.svg)](https://developer.apple.com/ios/)
[![SPM](https://img.shields.io/badge/SPM-Compatible-brightgreen.svg)](https://swift.org/package-manager/)



**ToastPreview** is an iOS SDK that allows you to easily present customizable toast notifications at the bottom of the screen. You can customize the background, text, and symbol, and even control user interaction within the toast.

## Compatibility

- **Swift:** 5.5 and later
- **iOS:** 17.0 and later
- **Swift Package Manager:** Compatible

## Installation

### Swift Package Manager (SPM)

Add the ToastPreview package to your Xcode project by navigating to `File > Swift Packages > Add Package Dependency` and entering the repository URL:

https://github.com/skaunited/ToastPreview.git


Alternatively, you can clone the repository locally and add the files manually to your project.

## Integration

### Step 1: Update `WindowGroup` in `Project_Name_App.swift`

Import `ToastPreview` at the top of your `Project_Name_App.swift` file and update the `WindowGroup` as follows:

```swift
import SwiftUI
import ToastPreview

@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            RootView {
                ContentView()
            }
        }
    }
}
```

### Step 2: Usage in Any View
Now you can use the `ToastViewManager` class from `ToastPreview` to present toasts from any view in your app. Customize the toast as needed :

```swift
import SwiftUI
import ToastPreview

struct ContentView: View {
	var body: some View {
		VStack {
			Button(action: {
				ToastViewManager.shared.present(
					background: .red,
					symbol: "globe",
					symbolTint: .green,
					timing: .medium,
					title: "Hello World",
					titleTint: .yellow
				)
			}, label: {
				Text("Present Toaster")
			})
		}
		.padding()
	}
}
```

## Customization

You can customize various aspects of the toast:

`background`: The background color of the toast.
`isUserInteractionEnabled`: Allow or disallow user interaction with the toast.
`symbol`: The symbol/icon representing the toast.
`symbolTint`: The tint color of the symbol.
`timing`: The animation duration of the toast. Choose from .short, .medium, or .long.
`title`: The text displayed in the toast.
`titleTint`: The text color of the title.
Feel free to experiment and customize according to your app's design.

## Example
<!-- Add a GIF or video demonstrating the usage of ToastPreview in your app -->
<!DOCTYPE html>
<html>
<img src="https://github.com/skaunited/ToastPreview/blob/main/Sources/Demo/toast_demo.gif" width="300" />
</html>


## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
This should properly embed the code within the sections in a more readable manner.

