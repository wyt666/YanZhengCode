//
//  ViewController.m
//  yanZhengCode
//
//  Created by 王双龙 on 16/8/3.
//  Copyright © 2016年 王双龙. All rights reserved.
//

#import "ViewController.h"
#import "CaptchaView.h"
#import "NHGraphCoder.h"

#define dataStr @"89504E470D0A1A0A0000000D494844520000005A000000320806000000DC0FCC3500000A754944415478DAED998957145716C6F307CC9C93334B124F26C6498C4B0C51A332C6054570478D5BDC22D2B2854541E20682BB44148C10346A44625C70898A062411017103456491455110B0D99A86EA7DA9EAEE6FDE7B0E9E710459CA8C33A6EE39757AA9EAAAAEDFBBEFBBDF7DF51AA4F8AFC46B120209B4045A0A09B4045A022D85045A022DC5EF13B4AA59833AB9020DB54A988C66F0BC403E37A2B2BC0675350AF29D891D6736F1D0EB0C10C87E097407C266B3A1EE910287F79CC39E8863880D3F82C8D038ACF1DD09BF399BE03F6723427C76627D402CC2FC63104ABE0F5FB1077BB71FC3F1B8F3484BCA424D55BD04BABDB05A6DA87DD480E9C39660EC478B31618027260EF08263EF4518DD8B6EAEECFDB88F3DD8AB535F37729C3BC6F65B0CE70F6598D0DF03319B0EFDBE41D36CB55AADED1E575D518B8890FDF84A1681D59E51D810B80B5FAFDC8750BF684CB5F78543CF85709DB00AABBCA2584607B945C07D5A28E6392DC77CE7E558B6682B4A0A1EC062B1FC7E4053B845770B117B301A172EA7C064367648978BF2CA5090731725F9E5B857F410F78A1FE26AEA2DACF28862A003166CC1CF273270E3722172AEDD21AF05484BCEC6992317716CFF79E45E2F86416F7A354153A874FBF730994D389D72122E6E4EE4F54487CE63112CACF0592D56763E9A9966338F86BA26C47DF3131C3E5808994B08327FBD8966A58A15489EEC57715A34D637A3BE4609A58283D1F08A825656D7931B363F055EA3D320F6876F30C4E52396D162C2A033E25C423AD3E269FFF043D2F10C7004F47F0E6ECBB52D16EBAB039A6A6E6D5915D68F74C78F81DB61369A9EBA599D5E07BF500FF41DF32EAEE75E11752D81647AE62F39983CC89B1441197E883DC31C8AD859683693CD642333C3C68A716B03D772EC4B014D2F6CD0E810E71B8E2FDF7286F2517D2B3761C6A7D3FA63E4CC21287D502CFA7A3957EF60F6C840A6D3516BE3515126177DCEE6260BF26FF1C8CDE651562210D9B13CA798DBC8805BA1D7934D47DFDBC4816ED146AEB6119A46EE19B740F70B8280EC9F52E1D36D2C320E24B67A0EA3D1881EC3DE805BD03C343689CFBEBCEC12C8268730D0D485941494BF808CB6206AA31EB39CD598335E83DD910634355ADBB49F4A8580EB9966A49C3593222D741D34BDB85AD18CBCF357707CCDB7C83E91FAD4B461234BF4AFAAB00C9B1C3DB16D6A40ABB68D7E77BFE21E7A3ABC8D88EF36B539F53A1A74E06F679560C9BCCD1845FCF4D2059B917FA394154371A0AD387AC088A90E2AD875E31020D3E2CE6DA14DD065A5021B98E98E1A6C58A1EB3A6893DE88BCE42BD83AC10F7E6F8FC35EF7F568782887CD6A7B02B049DE801F96462078E05C54E6DF6BF506B43A2DF61CDE854F26F5C5B9D433A2A58A3A919CAB4558E9BE1D8E7D16C18378E7EBE979D010B721268C461B2EFD6AC6DC096A0CEEC1C1F3730DD27F31B77A2C4FF4BCB88047B0BF0E1FFE9583D71C4DD741537B252F29C7C1C06DF07D7B3CC95A2FDC3A77890C8081EDD736AB911C7508A143BE40465C223BBE35D0F7CA4BE11A38072E3267DC2ECA110D5AA73520EB523E82BD76B08C96B9ACC185C46B50367022678A0D85B93C7C176831EA23155CA76A907CDAD4C6603F3E76C5975AF47B83C3575E3A711AADE33448DB770AA1F65F600DD92EEE3D091D014C176D2E1D3C87D0A1AE38B3793F83DE961B49387B08F653ED10B26D39E4F58F4483D6A874B89E9687E58BB7B156DC6BC65AFC7C2C83796731B2447F9B9FC363B9B70EA3ECD424B3354822A08DC667E5D0682005398B2799AC455F92D1D15F1BC48116781E85A9D9F89AC847C0FB53703C6C17945575B89598CEE4E2C7659168AE51B47983544FE72F998911330621E96222F406FD0B014D33DA6FCE468C215EDAEBB3B5483E718981160471ED7601711D419E5A221D2ACC9DA8466AB289CCA0D6405B7139CD8C4943D5E8FD270E69E7CDE25D47F59DFBD8316339DCFE300C7B64EB5070210BFEDD2722724A20CBF8E7FDB6C56D78AF76438352FC6A1AB392A476DCC82C84F78C75CC75CC750CC2AF895709E826D1E72E2FE3219BA181DD5B1C164DD3E25A06DFEA712693152989267CF03AC740538B270AB4D54275BA8215BC80F75C881E2F40C8A0F9D8397B25EA1F543FF7B75AD20DEE3E180D87594370ECEC61E20A78F1A04921E69AD448397D05FE733731E9904D09C1D98434B65E2D463AA893A03EDA6396866974A0BB0E39D75B075D27B760DB3A3D03ED43349D6AB6E8864551558B78FFAD5842B2D8EB2F8ED8B5301435A515CFBD29BAEF6ACE658C5F380ACB36F8A1F2D1C317D620D5CB1B9178240DAE13831968DFCF3722F9642614754DCCD38BC9685AFCE64F52C369A09A58363D2ACB5B2FF0B410CE72D6A0CF9F39249D328B6F585A2CDC019F702CFEE3706C76F26619DE1E649ACD2BC303F1E1981E484E3BFBC22053CD97573730D0B34606B0B5696AEFD293B2454B07B57747E38C7019A682FD7B1CD605E9406FF3F1F6B81BD4EBACE0380B297E8FB3D9B1BF8AC9C60B69C1CB738A11F55910C2862E424E62060433DFEEE09C4C4EC0A7D30762499817CAABEEB79B491D0DFAA8AAF27E0DE2634E63BEF30A8CE9EB8665AE5B9FD83B31D2515F6BC1A1EF0D98324285017FE3B054A64106F1D577F204DC220E232DC584E8703D269381E8F726874FBA73D8FB8D81796AD1A0A9374E894E80C7EB0E488949004F9A85F66E866AF1E8D9F6E83FBE17D2AEA5C2CC9B9F6C2D4BA806A3812D3459AC964EC1A12B7165C595F86E6B02C6D9B9B362B8CA3312D99905501337D291070A6D05CDD6ACCB3C9C07710CE4F03E2A2C98AC81DB740D663AA931CE5E85B18354F024CD092D805346AA588BDEF2FFBB0C9A3799703BE932D60D77C38EE94190973EECD0D48E3FF13DFA39BF87155B029057940B79DD233CAC2E4705D9CA482B7EF77E09F24B6E13DDAEE83418AD5A8FBCEC526C0F8D83CB601F4C1AE88DB5FE310C342D92620AA1C05B515723E0D84103962CD2B2A2E83D4FCB7CF5E6603D4E1E36A1E40E8F8BC4CA9D3A622499CEB32647F4EA9DA2B206E1CE3EF0796B2CF3D2ED49065B2B3618603FC50E23660EC6966FD723FEF83E1C3CB91F7B0E7D8B6DDF6DC6A6E83084C7AE47E4DE70D4D4C93B0D9A7AE8DCAC62F640D6A99F8C48870C9161F128B879974C61A1CBD2D1A2C3141CD764C1BD120105A4E0DD2D16D0A8B03E05F4F1AC7D7629B54BA0D58DCD38B5712F96BE3B0927427741ABE4DAD5594EC511805BD17BF43B184E1A94B1F347B285FE3E8EDD31745A7F067FB04B3FF41AF50E568707A159D5D4C942480A7323C79E70AFF088C4E44FBE642B78713B7FC283D22AE6AF5FD4D3218B607B06EE6FB2F05F947E933525BB89955356D7B59B79F4CFA5133D1E38B137930DBB713DF1F7E16FB266A517016F3FF56306F9FD11DDF0F1B80F70ABE02678A1F3BE9A3E9AA2CF01A337FE8888E0FD3875E8026A880B1193CD2FE5090BFDB35585F711332F181B1C1633E01DF94D4DBD9C69337519CB36F8222C7215228854441F882292B185BD8F89DF817D4777E3E2D50B50A93BBF0044F55FAF3332F9F85F8C4E81D6ABB4381E1A8BD5FD3F47EEB94C56103B025AD1A460454FB008FFFADCC83E3771CA274E84B6E08DCD0ABCAAD161D0B4DDD6ABB55011E36FD4E8BB64955EF6F4FDBFC9682924D012682924D0126809B414126809B414126809B4045A0A09B4045A0A1AFF049DE45661B57926D90000000049454E44AE426082"


@interface ViewController ()
{
    CaptchaView * _captchaView1;
    CaptchaView * _captchaView2;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //字符串验证码界面
    _captchaView1 = [[CaptchaView alloc] initWithFrame:CGRectMake(20, 40, 150, 40) WithType:DefaultType];
    [self.view addSubview:_captchaView1];
    
    //算数验证码
    _captchaView2 = [[CaptchaView alloc] initWithFrame:CGRectMake(20, 90, 150, 40) WithType:CountType];
    [self.view addSubview:_captchaView2];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(190, 40, 100, 40)];
    label.text = @"点击图片换验证码";
    label.font = [UIFont systemFontOfSize:12];
    label.textColor = [UIColor grayColor];
    [self.view addSubview:label];
    
    
    //图片验证码
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 150, 90, 40)];
    [self.view addSubview:imageView];
    NSData * data = [self transStrHexToData:dataStr];
    UIImage * image = [UIImage imageWithData:data];
    imageView.image = image;
    NSLog(@"%@",[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
    
    
    //滑块验证码
    //网络图片
//    NSString *url = @"http://pic.pimg.tw/loloto/1357207442-1350656755_l.jpg?v=1357207447";
//    NHGraphCoder *coder = [NHGraphCoder codeWithURL:url];
    
    //本地图片
    UIImage * image1 = [UIImage imageNamed:@"4.jpg"];
    NHGraphCoder *coder = [NHGraphCoder codeWithImage:image1];
    coder.center = CGPointMake(self.view.frame.size.width*0.5, self.view.frame.size.height*0.5 + 30);
    [coder handleGraphicCoderVerifyEvent:^(NHGraphCoder * _Nonnull cd, BOOL success) {
        
        NSString * resultStr ;
        if (success == 1) {
           resultStr = @"验证成功";
        }else{
            resultStr = @"验证失败";
            CAKeyframeAnimation *anim = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.x"];
            anim.repeatCount = 10;
            anim.values = @[@-20, @20, @-20];
            [coder.layer addAnimation:anim forKey:nil];
            [coder resetStateForDetect];
        }
        
        UIAlertController * alertController = [UIAlertController alertControllerWithTitle:@"提示" message:resultStr preferredStyle:UIAlertControllerStyleAlert];
        [self presentViewController:alertController animated:NO completion:nil];
        [UIView animateWithDuration:2 animations:^{
            [alertController dismissViewControllerAnimated:NO completion:nil];
        }];
        
    }];
    [self.view addSubview:coder];
}

/// 将服务器端传过来的十六进制的字符串转化为NSData
- (NSData *)transStrHexToData:(NSString *)strHex
{
    // bytes索引
    NSUInteger j = 0;
    
    NSInteger len = strHex.length;
    
    if (len % 2 == 1) {
        /// 若不能被2整除则说明16进制的字符串不满足图片图。特此说明，假如只是单纯的把十六进制转换为NSData就把这个if干掉即可，
        return nil;
    }
    
    // 动态分配内存
    Byte *bytes = (Byte *)malloc((len / 2 + 1) * sizeof(Byte));
    
    // 初始化内存 其中memset的作用是在一段内存块中填充某个给定的值，它是对较大的结构体或数组进行清零操作的一种最快方法
    memset(bytes, '\0', (len / 2 + 1) * sizeof(Byte));
    
    // for循环里面其实就是把16进制的字符串转化为字节数组的过程
    for (NSUInteger i = 0; i < strHex.length; i += 2) {
        
        // 一字节byte是8位(比特)bit 一位就代表一个0或者1(即二进制) 每8位(bit)组成一个字节(Byte) 所以每一次取2为字符组合成一个字节 其实就是2个16进制的字符其实就是8位(bit)即一个字节byte
        NSString *str = [strHex substringWithRange:NSMakeRange(i, 2)];
        
        // 将16进制字符串转化为十进制
        unsigned long uint_ch = strtoul([str UTF8String], 0, 16);
        
        bytes[j] = uint_ch;
        
        /// 自增
        j ++;
    }
    
    // 将字节数组转化为NSData
    NSData *data = [[NSData alloc] initWithBytes:bytes length:len / 2];
    
    // 释放内存
    free(bytes);
    
    return data;
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
