//
//  OCLabel.m
//  MyBuckSampleApp
//
//  Created by ZhuXueliang on 2019/12/29.
//

#import "OCLabel.h"
#import "CppObject.hpp"

@implementation OCLabel

- (UILabel *)generateLabelByText:(NSString *)text {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    CppObject cpp = CppObject();
    int result = cpp.add(1, 2);
    [label setText:[NSString stringWithFormat:@"%@ - %d", text, result]];
    return label;
}

@end
