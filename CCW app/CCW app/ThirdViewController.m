//
//  ThirdViewController.m
//  CCW
//
//  Created by Michael Balsa on 7/2/22.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.usconcealedcarry.com"]]];
    
    [self.webView addSubview:self.active];
    [self.active startAnimating];
    
    self.webView.navigationDelegate = self;
    self.active.hidesWhenStopped = YES;
}

-(void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation {
    [self.active startAnimating];
}

-(void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    [self.active stopAnimating];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)home:(id)sender {
    
}
- (IBAction)foward:(id)sender {
    
    if ([self.webView canGoForward]){
        [self.webView goForward];
    }
}

- (IBAction)rewind:(id)sender {
    if ([self.webView canGoBack]) {
        [self.webView goBack];
    }
}

- (IBAction)refresh:(id)sender {
    [self.webView reload];
}

- (IBAction)stop:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat: @"http://%@", self.searchBar.text]]]];
    
    [searchBar resignFirstResponder];
}
@end
