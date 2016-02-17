# FlashBar

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

None

## Installation

Dupa is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "FlashBar"
```


# Usage

```objective-c
@import FlashBar;

// ...

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.flashBar.backgroundColor = [UIColor greenColor];
}

- (IBAction)someAction:(id)sender {
    BOOL hidden = self.navigationController.flashBar.hidden;
    [self.navigationController.flashBar setHidden:!hidden animated:YES];
}
```

## Author

Damian Rzeszot, damian.rzeszot+flashbar@gmail.com

## License

FlashBar is available under the MIT license. See the LICENSE file for more info.
