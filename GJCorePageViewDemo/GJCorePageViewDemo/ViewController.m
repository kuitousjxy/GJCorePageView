//
//  ViewController.m
//  GJCorePageViewDemo
//
//  Created by macbook on 15/9/22.
//  Copyright © 2015年 zhenwang. All rights reserved.
//

#import "ViewController.h"
#import "GJCorePageView.h"

@interface ViewController () <GJCorePageViewDataSource, GJCorePageViewDelegate>
{
    GJCorePageView * _pageView;
    NSArray        * _titleArr;
    NSMutableArray * _viewArr;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _pageView = [[GJCorePageView alloc] initWithFrame:CGRectMake(0, 64, self.view.width, self.view.height - 64)];
    _pageView.dataSource = self;
    _pageView.delegate = self;
    _pageView.topBarMarqueeEnabled = YES;
    
    _titleArr = @[@"视图1", @"视图2", @"视图3", @"视图4", @"视图5", @"视图6"];
    
    _viewArr = [NSMutableArray array];
    
    //以下数据源可以定制为TableView

    UIView * subView1 = [[UIView alloc] init];
    subView1.backgroundColor = [UIColor greenColor];
    [_viewArr addObject:subView1];
    
    UIView * subView2 = [[UIView alloc] init];
    subView2.backgroundColor = [UIColor yellowColor];
    [_viewArr addObject:subView2];
    
    UIView * subView3 = [[UIView alloc] init];
    subView3.backgroundColor = [UIColor redColor];
    [_viewArr addObject:subView3];
    
    UIView * subView4 = [[UIView alloc] init];
    subView4.backgroundColor = [UIColor brownColor];
    [_viewArr addObject:subView4];
    
    UIView * subView5 = [[UIView alloc] init];
    subView5.backgroundColor = [UIColor cyanColor];
    [_viewArr addObject:subView5];
    
    UIView * subView6 = [[UIView alloc] init];
    subView6.backgroundColor = [UIColor purpleColor];
    [_viewArr addObject:subView6];
    
    [self.view addSubview:_pageView];
    
    [_pageView reloadData];
}

#pragma mark -- GJCorePageViewDataSource

- (UIView *)corePageView:(GJCorePageView *)corePageView viewInControllerForPageIndex:(NSInteger)pageIndex
{
    return _viewArr[pageIndex];
}

- (NSArray *)titlesInTopBarOfCorePageView:(GJCorePageView *)corePageView
{
    return _titleArr;
}

- (NSInteger)numberOfPagesInCorePageView:(GJCorePageView *)corePageView
{
    return _viewArr.count;
}

#pragma mark - GJCorePageViewDelegate

- (void)corePageView:(GJCorePageView *)corePageView didSwitchPageIndexFrom:(NSInteger)fromIndex to:(NSInteger)toIndex
{
    NSLog(@"页面%ld -> 页面%ld", fromIndex + 1, toIndex + 1);
}

@end
