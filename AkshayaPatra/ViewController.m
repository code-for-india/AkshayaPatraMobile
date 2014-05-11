//
//  ViewController.m
//  AkshayaPatra
//
//  Created by Akhilesh N on 10/05/14.
//  Copyright (c) 2014 Akhilesh N. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (nonatomic, strong) UILabel *visionLabel;
@property (nonatomic, strong) IBOutlet UIView *firstView;
@property (nonatomic, strong) IBOutlet UIView *secondView;
@property (nonatomic, strong) IBOutlet UIView *thirdView;
@property (nonatomic, strong) IBOutlet UILabel *rsLabelOne;
@property (nonatomic, strong) IBOutlet UILabel *rsLabelTwo;
@property (nonatomic, strong) IBOutlet UILabel *rsLabelThree;
@property (nonatomic, strong) IBOutlet UILabel *firstValueLabel;
@property (nonatomic, strong) IBOutlet UILabel *secondValueLabel;
@property (nonatomic, strong) IBOutlet UILabel *thirdValueLabel;
@property (nonatomic, strong) IBOutlet UIButton *firstButton;
@property (nonatomic, strong) IBOutlet UIButton *secondButton;
@property (nonatomic, strong) IBOutlet UIButton *thirdButton;
@property (nonatomic, strong) IBOutlet UILabel *selectedAmountLabel;
@property (nonatomic, strong) IBOutlet UILabel *numberOfChildren;
@property (nonatomic, strong) IBOutlet UIImageView *firstImageView;
@property (nonatomic, strong) IBOutlet UIImageView *secondImageView;
@property (nonatomic, strong) IBOutlet UIImageView *thirdImageView;
@property (nonatomic, strong) IBOutlet UIImageView *fourthImageView;
@property (nonatomic, strong) IBOutlet UIImageView *fifthImageView;
@property (nonatomic, strong) IBOutlet UIImageView *sixthImageView;
@property (nonatomic, strong) IBOutlet UIImageView *seventhImageView;
@property (nonatomic, strong) IBOutlet UIImageView *eighthImageView;
@property (nonatomic, strong) IBOutlet UIImageView *ninthImageView;
@property (nonatomic, strong) IBOutlet UIButton *donateNowButton;

@property (nonatomic, strong) UIView *secondMainView;
@property (nonatomic, strong) UIView *emailIDView;
@property (nonatomic, strong) UIImageView *emailImageView;
@property (nonatomic, strong) UITextField *emailTextField;
@property (nonatomic, strong) UIView *addressView;
@property (nonatomic, strong) UIImageView *personImageView;
@property (nonatomic, strong) UITextField *personNameTextField;
@property (nonatomic, strong) UIImageView *locationImageView;
@property (nonatomic, strong) UITextField *streetNameTextField;
@property (nonatomic, strong) UITextField *cityName;
@property (nonatomic, strong) UITextField *pinCode;
@property (nonatomic, strong) UITextField *countryName;
@property (nonatomic, strong) UIButton *paymentInformationButton;
@property (nonatomic, strong) UIScrollView *seconViewScrollView;
@property (nonatomic, strong) UIView *secondNavigationView;
@property (nonatomic, strong) UIButton *backButton;
@property (nonatomic, strong) UILabel *secondTitle;

@property (nonatomic, strong) UIView *thirdMainView;
@property (nonatomic, strong) UIView *thirdNavigationBar;
@property (nonatomic, strong) UIButton *secondBackButton;
@property (nonatomic, strong) UILabel *thirdTitle;
@property (nonatomic, strong) UILabel *cardDetailsLabel;
@property (nonatomic, strong) UIView *cardDetailsView;
@property (nonatomic, strong) UIImageView *cardImageView;
@property (nonatomic, strong) UITextField *cardNumber;
@property (nonatomic, strong) UIImageView *validityImageView;
@property (nonatomic, strong) UITextField *validityTextField;
@property (nonatomic, strong) UIImageView *secretPinImageView;
@property (nonatomic, strong) UITextField *secretPinTextField;
@property (nonatomic, strong) UIButton *finalDonateButton;

@property (nonatomic, strong) UIView *progressView;
@property (nonatomic, strong) UIButton *okButton;


- (IBAction)firstButtonPressed:(id)sender;
- (IBAction)secondButtonPressed:(id)sender;
- (IBAction)thirdButtonPressed:(id)sender;
- (IBAction)donateNowButtonPressed:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _visionLabel = [[UILabel alloc]initWithFrame:CGRectMake(20.0f, 20.0f, 280.0f, 528.0f)];
    _visionLabel.backgroundColor = [UIColor whiteColor];
    _visionLabel.text = @"";
    _visionLabel.font = [UIFont fontWithName:@"HelveticaNeue-LightItalic" size:53.0f];
    _visionLabel.numberOfLines = 0;
    _visionLabel.textColor = [UIColor colorWithRed:(10.00f/255.00f) green:(89.00f/255.00f) blue:(180.00f/255.00f) alpha:1];
    
    _firstView.layer.cornerRadius = 50.0f;
    _firstView.layer.borderWidth = 2.0f;
    _firstView.layer.borderColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1].CGColor;
    _firstValueLabel.textColor = [UIColor whiteColor];
    _rsLabelOne.textColor = [UIColor whiteColor];
    _firstView.backgroundColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    
    _secondView.layer.cornerRadius = 50.0f;
    _secondView.layer.borderWidth = 2.0f;
    _secondView.layer.borderColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1].CGColor;
    _secondValueLabel.textColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _rsLabelTwo.textColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    
    _thirdView.layer.cornerRadius = 50.0f;
    _thirdView.layer.borderWidth = 2.0f;
    _thirdView.layer.borderColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1].CGColor;
    _thirdValueLabel.textColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _rsLabelThree.textColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    
    _selectedAmountLabel.text = @"Rs 750";
    _numberOfChildren.text = @"1";
    _firstImageView.hidden = YES;
    _secondImageView.hidden = YES;
    _thirdImageView.hidden = YES;
    _fourthImageView.hidden = YES;
    _fifthImageView.hidden = NO;
    _sixthImageView.hidden = YES;
    _seventhImageView.hidden = YES;
    _eighthImageView.hidden = YES;
    _ninthImageView.hidden = YES;
    
    _donateNowButton.layer.cornerRadius = 10.0f;
    _donateNowButton.backgroundColor = [UIColor colorWithRed:(37.0f/255.0f) green:(147.0f/255.0f) blue:(91.0f/255.0f) alpha:1];
    

    _secondMainView = [[UIView alloc]initWithFrame:CGRectMake(320.0f, 0.0f, 320.0f, 568.0f)];
    _secondMainView.backgroundColor = [UIColor whiteColor];
    
    _seconViewScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 568.0f)];
    _seconViewScrollView.contentSize = CGSizeMake(320.0f, 568.0f);
    
    _emailIDView = [[UIView alloc]initWithFrame:CGRectMake(20.0f, 97.0f, 280.0f, 49.0f)];
    _emailIDView.layer.cornerRadius = 10.0f;
    _emailIDView.backgroundColor = [UIColor clearColor];
    _emailIDView.layer.borderWidth = 1.0f;
    _emailIDView.layer.borderColor = [UIColor colorWithRed:(238.0f/255.0f) green:(233.0f/255.0f) blue:(233.0f/255.0f) alpha:1].CGColor;
    
    _emailImageView = [[UIImageView alloc]initWithFrame:CGRectMake(2.0f, 12.0f, 25.0f, 25.0f)];
    _emailImageView.image = [UIImage imageNamed:@"mail.png"];
    
    _emailTextField = [[UITextField alloc]initWithFrame:CGRectMake(35.0f, 10.0f, 225.0f, 30.0f)];
    _emailTextField.borderStyle = UITextBorderStyleNone;
    _emailTextField.font = [UIFont fontWithName:@"HelveticaNeue" size:18.0f];
    _emailTextField.placeholder = @"Email";
    _emailTextField.autocorrectionType = UITextAutocorrectionTypeNo;
    _emailTextField.keyboardType = UIKeyboardTypeEmailAddress;
    _emailTextField.returnKeyType = UIReturnKeyNext;
    _emailTextField.delegate = self;
    
    [_emailIDView addSubview:_emailImageView];
    [_emailIDView addSubview:_emailTextField];
    
    _addressView = [[UIView alloc]initWithFrame:CGRectMake(20.0f, 167.0f, 280.0f, 200.0f)];
    _addressView.backgroundColor = [UIColor clearColor];
    _addressView.layer.cornerRadius = 10.0f;
    _addressView.layer.borderWidth = 1.0f;
    _addressView.layer.borderColor = [UIColor colorWithRed:(238.0f/255.0f) green:(233.0f/255.0f) blue:(233.0f/255.0f) alpha:1].CGColor;
    
    _personImageView = [[UIImageView alloc]initWithFrame:CGRectMake(2.0f, 12.0f, 25.0f, 25.0f)];
    _personImageView.image = [UIImage imageNamed:@"person.png"];
    
    _personNameTextField = [[UITextField alloc]initWithFrame:CGRectMake(35.0f, 10.0f, 225.0f, 30.0f)];
    _personNameTextField.borderStyle = UITextBorderStyleNone;
    _personNameTextField.font = [UIFont fontWithName:@"HelveticaNeue" size:18.0f];
    _personNameTextField.placeholder = @"Name";
    _personNameTextField.keyboardType = UIKeyboardTypeDefault;
    _personNameTextField.returnKeyType = UIReturnKeyNext;
    _personNameTextField.autocorrectionType = UITextAutocorrectionTypeNo;
    _personNameTextField.delegate = self;
    
    UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0.0f, 39.0f, 280.0f, 1.0f)];
    line.backgroundColor = [UIColor colorWithRed:(238.0f/255.0f) green:(233.0f/255.0f) blue:(233.0f/255.0f) alpha:1];
    
    _locationImageView = [[UIImageView alloc]initWithFrame:CGRectMake(2.0f, 45.0f, 25.0f, 25.0f)];
    _locationImageView.image = [UIImage imageNamed:@"Location.png"];
    
    _streetNameTextField = [[UITextField alloc]initWithFrame:CGRectMake(35.0f, 43.0f, 225.0f, 30.0f)];
    _streetNameTextField.borderStyle = UITextBorderStyleNone;
    _streetNameTextField.font = [UIFont fontWithName:@"HelveticaNeue" size:18.0f];
    _streetNameTextField.placeholder = @"Street Name";
    _streetNameTextField.keyboardType = UIKeyboardTypeDefault;
    _streetNameTextField.returnKeyType = UIReturnKeyNext;
    _streetNameTextField.autocorrectionType = UITextAutocorrectionTypeNo;
    _streetNameTextField.delegate = self;
    
    UIView *line1 = [[UIView alloc]initWithFrame:CGRectMake(35.0f, 72.0f, 245.0f, 1.0f)];
    line1.backgroundColor = [UIColor colorWithRed:(238.0f/255.0f) green:(233.0f/255.0f) blue:(233.0f/255.0f) alpha:1];
    
    _cityName = [[UITextField alloc]initWithFrame:CGRectMake(35.0f, 81.0f, 225.0f, 30.0f)];
    _cityName.borderStyle = UITextBorderStyleNone;
    _cityName.font = [UIFont fontWithName:@"HelveticaNeue" size:18.0f];
    _cityName.placeholder = @"City Name";
    _cityName.keyboardType = UIKeyboardTypeDefault;
    _cityName.returnKeyType = UIReturnKeyNext;
    _cityName.autocorrectionType = UITextAutocorrectionTypeNo;
    _cityName.delegate = self;
    
    UIView *line2 = [[UIView alloc]initWithFrame:CGRectMake(35.0f, 110.0f, 245.0f, 1.0f)];
    line2.backgroundColor = [UIColor colorWithRed:(238.0f/255.0f) green:(233.0f/255.0f) blue:(233.0f/255.0f) alpha:1];
    
    _pinCode = [[UITextField alloc]initWithFrame:CGRectMake(35.0f, 119.0f, 225.0f, 30.0f)];
    _pinCode.borderStyle = UITextBorderStyleNone;
    _pinCode.font = [UIFont fontWithName:@"HelveticaNeue" size:18.0f];
    _pinCode.placeholder = @"Pincode";
    _pinCode.keyboardType = UIKeyboardTypeNumberPad;
    _pinCode.returnKeyType = UIReturnKeyNext;
    _pinCode.autocorrectionType = UITextAutocorrectionTypeNo;
    _pinCode.delegate = self;
    
    UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(35.0f, 148.0f, 245.0f, 1.0f)];
    line3.backgroundColor = [UIColor colorWithRed:(238.0f/255.0f) green:(233.0f/255.0f) blue:(233.0f/255.0f) alpha:1];
    
    _countryName = [[UITextField alloc]initWithFrame:CGRectMake(35.0f, 157.0f, 225.0f, 30.0f)];
    _countryName.borderStyle = UITextBorderStyleNone;
    _countryName.font = [UIFont fontWithName:@"HelveticaNeue" size:18.0f];
    _countryName.placeholder = @"Country Name";
    _countryName.keyboardType = UIKeyboardTypeDefault;
    _countryName.returnKeyType = UIReturnKeyDone;
    _countryName.autocorrectionType = UITextAutocorrectionTypeNo;
    _countryName.delegate = self;
    
    _paymentInformationButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _paymentInformationButton.frame = CGRectMake(30.0f, 402.0f, 260.0f, 42.0f);
    [_paymentInformationButton setTitle:@"Payment Information" forState:UIControlStateNormal];
    [_paymentInformationButton.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:20.0f]];
    [_paymentInformationButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _paymentInformationButton.layer.cornerRadius = 10.0f;
    _paymentInformationButton.backgroundColor = [UIColor colorWithRed:(10.0f/255.0f) green:(89.0f/255.0f) blue:(180.0f/255.0f) alpha:1];
    [_paymentInformationButton addTarget:self action:@selector(paymentInformationButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    _secondNavigationView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 64)];
    _secondNavigationView.backgroundColor = [UIColor whiteColor];
    
    _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _backButton.frame = CGRectMake(20.0f, 36.0f, 35.0f, 30.0f);
    [_backButton setTitle:@"Back" forState:UIControlStateNormal];
    [_backButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_backButton.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:15.0f]];
    
    _secondTitle = [[UILabel alloc]initWithFrame:CGRectMake(124.0f, 37.0f, 73.0f, 27.0f)];
    _secondTitle.text = @"Details";
    _secondTitle.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:22.0f];
    
    [_secondNavigationView addSubview:_backButton];
    [_secondNavigationView addSubview:_secondTitle];
    
    
    
    [_addressView addSubview:_personImageView];
    [_addressView addSubview:_personNameTextField];
    [_addressView addSubview:line];
    [_addressView addSubview:_locationImageView];
    [_addressView addSubview:_streetNameTextField];
    [_addressView addSubview:line1];
    [_addressView addSubview:_cityName];
    [_addressView addSubview:line2];
    [_addressView addSubview:_pinCode];
    [_addressView addSubview:line3];
    [_addressView addSubview:_countryName];
    
    [_seconViewScrollView addSubview:_emailIDView];
    [_seconViewScrollView addSubview:_addressView];
    [_seconViewScrollView addSubview:_paymentInformationButton];
    
    [_secondMainView addSubview:_seconViewScrollView];
    [_secondMainView addSubview:_secondNavigationView];
    
    _thirdMainView = [[UIView alloc]initWithFrame:CGRectMake(320.0f, 0.0f, 320.0f, 568.0f)];
    _thirdMainView.backgroundColor = [UIColor whiteColor];
    
    _cardDetailsLabel = [[UILabel alloc]initWithFrame:CGRectMake(20.0f, 106.0f, 171.0f, 20.0f)];
    _cardDetailsLabel.text = @"Enter your card details";
    _cardDetailsLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:17.0f];
    
    _cardDetailsView = [[UIView alloc]initWithFrame:CGRectMake(20.0f, 134.0f, 280.0f, 98.0f)];
    _cardDetailsView.layer.cornerRadius = 10.0f;
    _cardDetailsView.layer.borderWidth = 1.0f;
    _cardDetailsView.layer.borderColor = [UIColor colorWithRed:(238.0f/255.0f) green:(233.0f/255.0f) blue:(233.0f/255.0f) alpha:1].CGColor;
    
    _cardImageView = [[UIImageView alloc]initWithFrame:CGRectMake(5.0f, 12.0f, 25.0f, 25.0f)];
    _cardImageView.image = [UIImage imageNamed:@"card.png"];
    
    _cardNumber = [[UITextField alloc]initWithFrame:CGRectMake(35.0f, 10.0f, 225.0f, 30.0f)];
    _cardNumber.borderStyle = UITextBorderStyleNone;
    _cardNumber.font = [UIFont fontWithName:@"HelveticaNeue" size:18.0f];
    _cardNumber.placeholder = @"Card Number";
    _cardNumber.keyboardType = UIKeyboardTypeNumberPad;
    _cardNumber.returnKeyType = UIReturnKeyNext;
    _cardNumber.autocorrectionType = UITextAutocorrectionTypeNo;
    _cardNumber.delegate = self;
    
    UIView *cardLine = [[UIView alloc]initWithFrame:CGRectMake(0.0f, 48.0f, 280.0f, 1.0f)];
    cardLine.backgroundColor = [UIColor colorWithRed:(238.0f/255.0f) green:(233.0f/255.0f) blue:(233.0f/255.0f) alpha:1];
    
    _validityImageView = [[UIImageView alloc]initWithFrame:CGRectMake(5.0f, 61.0f, 25.0f, 25.0f)];
    _validityImageView.image = [UIImage imageNamed:@"calendar.png"];
    
    _validityTextField = [[UITextField alloc]initWithFrame:CGRectMake(35.0f, 59.0f, 100.0f, 30.0f)];
    _validityTextField.textAlignment = NSTextAlignmentLeft;
    _validityTextField.borderStyle = UITextBorderStyleNone;
    _validityTextField.font = [UIFont fontWithName:@"HelveticaNeue" size:18.0f];
    _validityTextField.placeholder = @"MM / YY";
    _validityTextField.keyboardType = UIKeyboardTypeNumberPad;
    _validityTextField.delegate = self;
    
    UIView *cardLine1 = [[UIView alloc]initWithFrame:CGRectMake(140.0f, 49.0f, 1.0f, 49.0f)];
    cardLine1.backgroundColor = [UIColor colorWithRed:(238.00f/255.0f) green:(233.0f/255.0f) blue:(233.0f/255.0f) alpha:1];
    
    _secretPinImageView = [[UIImageView alloc]initWithFrame:CGRectMake(145.0f, 61.0f, 25.0f, 25.0f)];
    _secretPinImageView.image = [UIImage imageNamed:@"lock.png"];
    
    _secretPinTextField = [[UITextField alloc]initWithFrame:CGRectMake(178.0f, 59.0f, 120.0f, 30.0f)];
    _secretPinTextField.textAlignment = NSTextAlignmentLeft;
    _secretPinTextField.borderStyle = UITextBorderStyleNone;
    _secretPinTextField.font = [UIFont fontWithName:@"HelveticaNeue" size:18.0f];
    _secretPinTextField.placeholder = @"CVC";
    _secretPinTextField.keyboardType = UIKeyboardTypeNumberPad;
    _secretPinTextField.delegate = self;
    
    [_thirdMainView addSubview:_cardDetailsLabel];
    
    [_cardDetailsView addSubview:_cardImageView];
    [_cardDetailsView addSubview:_cardNumber];
    [_cardDetailsView addSubview:cardLine];
    [_cardDetailsView addSubview:_validityImageView];
    [_cardDetailsView addSubview:_validityTextField];
    [_cardDetailsView addSubview:cardLine1];
    [_cardDetailsView addSubview:_secretPinImageView];
    [_cardDetailsView addSubview:_secretPinTextField];
    
    [_thirdMainView addSubview:_cardDetailsView];
    
    
    _secondBackButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _secondBackButton.frame = CGRectMake(20.0f, 36.0f, 35.0f, 30.0f);
    [_secondBackButton setTitle:@"Back" forState:UIControlStateNormal];
    [_secondBackButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_secondBackButton.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:15.0f]];
    
    _thirdTitle = [[UILabel alloc]initWithFrame:CGRectMake(119.0f, 37.0f, 93.0f, 27.0f)];
    _thirdTitle.text = @"Payment";
    _thirdTitle.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:22.0f];
    
    _thirdNavigationBar = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 64)];
    _thirdNavigationBar.backgroundColor = [UIColor whiteColor];
    
    [_thirdNavigationBar addSubview:_secondBackButton];
    [_thirdNavigationBar addSubview:_thirdTitle];
    
    
    _finalDonateButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _finalDonateButton.frame = CGRectMake(30.0f, 263.0f, 260.0f, 42.0f);
    [_finalDonateButton setTitle:@"Donate Rs 750" forState:UIControlStateNormal];
    [_finalDonateButton.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:20.0f]];
    [_finalDonateButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _finalDonateButton.layer.cornerRadius = 10.0f;
    _finalDonateButton.backgroundColor = [UIColor colorWithRed:(10.0f/255.0f) green:(89.0f/255.0f) blue:(180.0f/255.0f) alpha:1];
    
    [_finalDonateButton addTarget:self action:@selector(finalDonateButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    [_thirdMainView addSubview:_finalDonateButton];
    
    [_thirdMainView addSubview:_thirdNavigationBar];
    
    [self.view addSubview:_secondMainView];
    [self.view addSubview:_thirdMainView];
    
    [self.view addSubview:_visionLabel];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
        [self animateVisionLabelText];
    });
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)animateVisionLabelText {
    
    NSString *visionText = @"No child in India shall be deprived of education because of hunger.";
    
    for (int i=0; i<visionText.length; ++i) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [_visionLabel setText:[NSString stringWithFormat:@"%@%C",_visionLabel.text,[visionText characterAtIndex:i]]];
        });
        [NSThread sleepForTimeInterval:0.06];
    }
    
    sleep(1);
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1];
        _visionLabel.alpha = 0;
        [UIView commitAnimations];
        
        
    });
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)firstButtonPressed:(id)sender {
    
    _firstValueLabel.textColor = [UIColor whiteColor];
    _rsLabelOne.textColor = [UIColor whiteColor];
    _firstView.backgroundColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _secondValueLabel.textColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _rsLabelTwo.textColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _secondView.backgroundColor = [UIColor whiteColor];
    _thirdValueLabel.textColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _rsLabelThree.textColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _thirdView.backgroundColor = [UIColor whiteColor];
    _selectedAmountLabel.text = @"Rs 750";
    _numberOfChildren.text = @"1";
    _firstImageView.hidden = YES;
    _secondImageView.hidden = YES;
    _thirdImageView.hidden = YES;
    _fourthImageView.hidden = YES;
    _fifthImageView.hidden = NO;
    _sixthImageView.hidden = YES;
    _seventhImageView.hidden = YES;
    _eighthImageView.hidden = YES;
    _ninthImageView.hidden = YES;
    
}

- (IBAction)secondButtonPressed:(id)sender {
    
    _secondValueLabel.textColor = [UIColor whiteColor];
    _rsLabelTwo.textColor = [UIColor whiteColor];
    _secondView.backgroundColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _firstValueLabel.textColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _rsLabelOne.textColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _firstView.backgroundColor = [UIColor whiteColor];
    _thirdValueLabel.textColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _rsLabelThree.textColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _thirdView.backgroundColor = [UIColor whiteColor];
    _selectedAmountLabel.text = @"Rs 2250";
    _numberOfChildren.text = @"3";
    _firstImageView.hidden = YES;
    _secondImageView.hidden = YES;
    _thirdImageView.hidden = YES;
    _fourthImageView.hidden = NO;
    _fifthImageView.hidden = NO;
    _sixthImageView.hidden = NO;
    _seventhImageView.hidden = YES;
    _eighthImageView.hidden = YES;
    _ninthImageView.hidden = YES;
    [_finalDonateButton setTitle:@"Donate Rs 2250" forState:UIControlStateNormal];
    
}

- (IBAction)thirdButtonPressed:(id)sender {
    
    _thirdValueLabel.textColor = [UIColor whiteColor];
    _rsLabelThree.textColor = [UIColor whiteColor];
    _thirdView.backgroundColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _secondValueLabel.textColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _rsLabelTwo.textColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _secondView.backgroundColor = [UIColor whiteColor];
    _firstValueLabel.textColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _rsLabelOne.textColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    _firstView.backgroundColor = [UIColor whiteColor];
    _selectedAmountLabel.text = @"Rs 6750";
    _numberOfChildren.text = @"9";
    _firstImageView.hidden = NO;
    _secondImageView.hidden = NO;
    _thirdImageView.hidden = NO;
    _fourthImageView.hidden = NO;
    _fifthImageView.hidden = NO;
    _sixthImageView.hidden = NO;
    _seventhImageView.hidden = NO;
    _eighthImageView.hidden = NO;
    _ninthImageView.hidden = NO;
    [_finalDonateButton setTitle:@"Donate 6750" forState:UIControlStateNormal];

    
}

-(void)paymentInformationButtonPressed {
    
    [_countryName resignFirstResponder];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3f];
    _thirdMainView.frame = CGRectMake(0.0f, 0.0f, 320.0f, 568.0f);
    [UIView commitAnimations];
    
}

-(void)finalDonateButtonPressed {
    
    _progressView = [[UIView alloc]initWithFrame:CGRectMake(80.0f, 157.0f, 160.0f, 163.0f)];
    _progressView.backgroundColor = [UIColor colorWithRed:(37.00f/255.00f) green:(147.00f/255.00f) blue:(91.00f/255.00f) alpha:1];
    
    UILabel *progressLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 71, 120, 21)];
    progressLabel.text = @"Processing...";
    progressLabel.textAlignment = NSTextAlignmentCenter;
    progressLabel.textColor = [UIColor whiteColor];
    progressLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:18.0f];
    
    _progressView.layer.cornerRadius = 10.0f;
    
    [_progressView addSubview:progressLabel];
    
    [_thirdMainView addSubview:_progressView];
    
    _okButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _okButton.frame = CGRectMake(26.0f, 113.0f, 109.0f, 30.0f);
    [_okButton setTitle:@"OK" forState:UIControlStateNormal];
    [_okButton.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue" size:20.0f]];
    [_okButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _okButton.layer.cornerRadius = 10.0f;
    _okButton.backgroundColor = [UIColor colorWithRed:(10.0f/255.0f) green:(89.0f/255.0f) blue:(180.0f/255.0f) alpha:1];
    [_okButton addTarget:self action:@selector(okButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    [_progressView addSubview:_okButton];
    
    progressLabel.text = @"Success";
    
    
   // [progressView removeFromSuperview];
    

    
}

-(void)okButtonPressed {
    
    [_secretPinTextField resignFirstResponder];
    [_progressView removeFromSuperview];
    _secondMainView.frame = CGRectMake(320.0f, 0.0f, 320.0f, 568.0f);
    _thirdMainView.frame = CGRectMake(320.0f, 0.0f, 320.0f, 568.0f);
    [self firstButtonPressed:nil];
    _emailTextField.text = @"";
    _personNameTextField.text = @"";
    _streetNameTextField.text = @"";
    _cityName.text = @"";
    _countryName.text = @"";
    _pinCode.text = @"";
    _cardNumber.text = @"";
    _validityTextField.text = @"";
    _secretPinTextField.text = @"";
    _seconViewScrollView.contentOffset = CGPointMake(0, 0);
    
}

- (IBAction)donateNowButtonPressed:(id)sender {
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3f];
    _secondMainView.frame = CGRectMake(0.0f, 0.0f, 320.0f, 568.0f);
    [UIView commitAnimations];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField == _emailTextField) {
        [_personNameTextField becomeFirstResponder];
    } else if (textField == _personNameTextField) {
        [_streetNameTextField becomeFirstResponder];
    } else if (textField == _streetNameTextField) {
        [_cityName becomeFirstResponder];
    } else if (textField == _cityName) {
        [_pinCode becomeFirstResponder];
    }
    
    return YES;
    
}


-(void)textFieldDidBeginEditing:(UITextField *)textField {
    
    if ((textField == _pinCode) || (textField == _countryName)) {
        [_seconViewScrollView setContentOffset:CGPointMake(0, 100) animated:YES];
    }
    
}



@end
