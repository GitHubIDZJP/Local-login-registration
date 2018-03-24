
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    
    
    loginText = [[UITextField alloc]initWithFrame:CGRectMake(20, 80, SCREEN_SIZE.width-40, 30)];
    loginText.borderStyle = UITextBorderStyleRoundedRect;
    loginText.placeholder = @"请输入用户名";
    
    UIImageView *loginImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
    loginImage.image = [UIImage imageNamed:@"bg_icon_bind"];
    
    loginText.leftView = loginImage;
    loginText.leftViewMode = UITextFieldViewModeAlways;
    [self.view addSubview:loginText];
    
    
    passwdText = [[UITextField alloc]initWithFrame:CGRectMake(20, 130, SCREEN_SIZE.width - 40, 30)];
    passwdText.borderStyle = UITextBorderStyleRoundedRect;
    passwdText.placeholder = @"请输入密码";
    passwdText.secureTextEntry = YES;
    
    UIImageView *passImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
    passImage.image = [UIImage imageNamed:@"bg_icon_intro"];
    passwdText.leftView  = passImage;
    passwdText.leftViewMode = UITextFieldViewModeAlways;
    [self.view addSubview:passwdText];
    
    //创建登录
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    loginBtn.frame = CGRectMake(SCREEN_SIZE.width/4 - 50, 180, 100, 30);
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    loginBtn.layer.masksToBounds = YES;
    loginBtn.layer.cornerRadius = 10;
    loginBtn.backgroundColor = [UIColor cyanColor];
    [loginBtn addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
    
    //注册按钮
    UIButton *registerBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    registerBtn.frame = CGRectMake(SCREEN_SIZE.width/4*3 - 50, 180, 100, 30);
    [registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    registerBtn.layer.masksToBounds = YES;
    registerBtn.layer.cornerRadius = 10;
    registerBtn.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:registerBtn];
    [registerBtn addTarget:self action:@selector(register) forControlEvents:UIControlEventTouchUpInside];
    
}

//注册
- (void)register{
    RegisterViewController *registe = [[RegisterViewController alloc]init];
    [self presentViewController:registe animated:true completion:nil];
}

//登录前，先做校验
- (void)login{
    if (loginText.text.length == 0)
    {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"登录名不能为空" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        
        [alertController addAction:action];
        [self presentViewController:alertController animated:YES completion:nil];
        return;
    }
    
    if (passwdText.text.length == 0) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"密码不能为空" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        
        [alertController addAction:action];
        [self presentViewController:alertController animated:YES completion:nil];
        return;
    }
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"登录成功" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alertController addAction:action];
    [self presentViewController:alertController animated:YES completion:nil];
    
}


@end
