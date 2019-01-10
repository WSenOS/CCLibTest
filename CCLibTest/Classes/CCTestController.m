//
//  CCTestController.m
//  CCLibTest
//
//  Created by sen on 2019/1/9.
//

#import "CCTestController.h"

@implementation NSBundle (wgSubBundle)

+ (instancetype)wg_subBundleWithBundleName:(NSString *)bundleName targetClass:(Class)targetClass{
    //并没有拿到子bundle
    NSBundle *bundle = [NSBundle bundleForClass:targetClass];
    //在这个路径下找到子bundle的路径
    NSString *path = [bundle pathForResource:bundleName ofType:@"bundle"];
    //根据路径拿到子bundle
    NSLog(@"ssssssssssssssss");
    return path?[NSBundle bundleWithPath:path]:[NSBundle mainBundle];
}

@end

@interface CCTestController ()
@property (weak, nonatomic) IBOutlet UIImageView *bottomImageView;

@end

@implementation CCTestController

- (instancetype)init
{

    //在这个路径下找到子bundle的路径
  
    self = [super initWithNibName:@"CCTestController" bundle:[NSBundle wg_subBundleWithBundleName:@"CCLibTest" targetClass:[self class]]];
    NSLog(@"ssssssssssssssss");
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSBundle * bundle = [NSBundle wg_subBundleWithBundleName:@"CCLibTest" targetClass:[self class]];
    _bottomImageView.image = [UIImage imageWithContentsOfFile:[bundle pathForResource:@"bbb" ofType:@"png"]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
