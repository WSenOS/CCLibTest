//
//  CCTestController.h
//  CCLibTest
//
//  Created by sen on 2019/1/9.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (wgSubBundle)
//bundleName是和组件名字一样的
+ (instancetype)wg_subBundleWithBundleName:(NSString *)bundleName targetClass:(Class)targetClass;

@end

@interface CCTestController : UIViewController

@end

NS_ASSUME_NONNULL_END
