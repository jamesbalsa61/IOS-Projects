//
//  ThirdViewController.h
//  CCW
//
//  Created by Michael Balsa on 7/2/22.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ThirdViewController : UIViewController <WKNavigationDelegate, UISearchBarDelegate> 

- (IBAction)home:(id)sender;

@property (strong, nonatomic) IBOutlet WKWebView *webView;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *active;

@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;
- (IBAction)stop:(id)sender;
- (IBAction)refresh:(id)sender;
- (IBAction)rewind:(id)sender;
- (IBAction)foward:(id)sender;

@end

NS_ASSUME_NONNULL_END
