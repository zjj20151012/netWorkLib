//
//  zjjHttpTool.h
//  zjjHttpTool
//
//  Created by 朱佳杰 on 2016/11/9.
//  Copyright © 2016年 zjj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface zjjHttpTool : NSObject

@property (nonatomic, strong) NSString *contentType;
@property (nonatomic, assign) BOOL shouldAddContentType;

- (void)getWithUrlshowHUD:(NSString *)urlStr params:(NSDictionary *)param hudInfo:(NSString *)hudStr success:(void(^)(id responceObj))success failure:(void(^)(id fail))failure;

- (void)postWithUrlshowHUD:(NSString *)urlStr params:(NSDictionary *)param hudInfo:(NSString *)hudStr success:(void(^)(id responceObj))success failure:(void(^)(id fail))failure;

- (void)getWithUrl:(NSString *)urlStr params:(NSDictionary *)param success:(void(^)(id responceObj))success failure:(void(^)(id fail))failure;

- (void)postWithUrl:(NSString *)urlStr params:(NSDictionary *)param success:(void(^)(id responceObj))success failure:(void(^)(id fail))failure;

@end
