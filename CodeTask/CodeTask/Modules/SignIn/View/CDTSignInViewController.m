//
//  SignInViewController.m
//  Project:   CodeTask
//
//  Module:   SignIn
//  Description: SignIn
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import "CDTSignInViewController.h"
#import "CDTSignInViewOutput.h"

@interface CDTSignInViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *loginTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UILabel *errorLabel;

@property (strong, nonatomic) UIBarButtonItem *signInBarButtonItem;
@property (strong, nonatomic) UIBarButtonItem *pendingbarButtonItem;
@property (weak, nonatomic) UIActivityIndicatorView *activityView;

@end

@implementation CDTSignInViewController

- (void)viewDidLoad {
	[super viewDidLoad];
        
    self.signInBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Sign In", @"")
                                                                style:UIBarButtonItemStylePlain
                                                               target:self
                                                               action:@selector(onSignInTap:)];
    
    UIActivityIndicatorView *activityView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    self.pendingbarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:activityView];
    self.activityView = activityView;
    
	[self.output setupView];
}

- (void)login {
    [self.output onSignInWithLogin:self.loginTextField.text password:self.passwordTextField.text];
}

#pragma mark - CDTSignInViewInput

- (void)setPending:(BOOL)pending {
    self.navigationItem.rightBarButtonItem = pending ? self.pendingbarButtonItem : self.signInBarButtonItem;
    self.loginTextField.enabled =
    self.passwordTextField.enabled = !pending;
    if (pending) {
        [self.activityView startAnimating];
    } else {
        [self.activityView stopAnimating];
    }
}

- (void)showError:(NSError *)error {
    self.errorLabel.hidden = error == nil;
    self.errorLabel.text = error.localizedDescription;
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.loginTextField) {
        [self.passwordTextField becomeFirstResponder];
    } else {
        [textField resignFirstResponder];
        [self login];
    }
    
    return NO;
}

#pragma mark - Actions

- (IBAction)onTap:(UITapGestureRecognizer *)sender {
    if (sender.state == UIGestureRecognizerStateRecognized) {
        [self.view endEditing:YES];
    }
}

- (void)onSignInTap:(id)sender {
    [self.view endEditing:YES];
    [self login];
}

                        
                                

@end