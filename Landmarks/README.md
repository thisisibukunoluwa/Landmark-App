
## app
An app that uses the SwiftUI app life cycle has a structure that conforms to the App protocol. The structure’s body property returns one or more scenes, which in turn provide content for display. The @main attribute identifies the app’s entry point.
By default, SwiftUI view files declare two structures. The first structure conforms to the View protocol and describes the view’s content and layout. The second structure declares a preview for that view.


## Groups 
You can use a Group to return multiple previews from a preview provider.
Group is a container for grouping view content. Xcode renders the group’s child views as separate previews in the canvas.

## Note 
The code you write in a preview provider only changes what Xcode displays in the canvas.

## Device Preview 
By default, previews render at the size of the device in the active scheme. You can change the preview device by calling the previewDevice(_:) modifier method
