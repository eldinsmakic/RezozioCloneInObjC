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
    NSLog(@"Hello world");
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    NSLog(@"Hello world");
    return self;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    NSLog(@"Hello worldss");

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

        self.backgroundColor = UIColor.grayColor;
    }

    return self;
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

        self.backgroundColor = UIColor.grayColor;
    }
    NSLog(@"Hellow");
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
