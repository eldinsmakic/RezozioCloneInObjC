//
//  TweetCell.m
//  TestObjectiveC
//
//  Created by eldin smakic on 02/06/2021.
//

#import "TweetCell.h"

@implementation TweetCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {

        UILabel * label = [UILabel new];

        NSArray<NSLayoutConstraint *> * constraints = [NSArray arrayWithObjects:[[label heightAnchor] constraintEqualToConstant:40], [[label widthAnchor] constraintEqualToConstant:40], nil];

        [NSLayoutConstraint activateConstraints: constraints];

        label.text = @"hello world";
        label.backgroundColor = UIColor.blueColor;
        label.translatesAutoresizingMaskIntoConstraints = NO;

        [self.contentView addSubview: label];
        self.contentView.translatesAutoresizingMaskIntoConstraints = NO;

        NSArray<NSLayoutConstraint *> * constraintsView = [NSArray arrayWithObjects:[[label topAnchor] constraintEqualToAnchor: [self.contentView topAnchor ]],[[label leftAnchor] constraintEqualToAnchor: [self.contentView leftAnchor]], nil];

        [NSLayoutConstraint activateConstraints:constraintsView];
    
    }

    return self;
}

+ (NSString * ) reusableIdentifier {
    return @"test";
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
