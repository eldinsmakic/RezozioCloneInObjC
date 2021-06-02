//
//  TweetCell.h
//  TestObjectiveC
//
//  Created by eldin smakic on 02/06/2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TweetCell : UITableViewCell

@property (nonatomic, strong) NSString * userName;
@property (nonatomic, strong) NSString * userTag;
@property (nonatomic, strong) NSString * message;
@property (nonatomic, strong) NSDate * createAt;

+ (NSString * ) reusableIdentifier;

@end

NS_ASSUME_NONNULL_END
