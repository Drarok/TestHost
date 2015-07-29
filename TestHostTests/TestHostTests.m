//
//  TestHostTests.m
//  TestHostTests
//
//  Created by Mat Gadd on 29/07/2015.
//  Copyright (c) 2015 Mat Gadd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "MasterViewController.h"

@interface TestHostTests : XCTestCase

@end

@implementation TestHostTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testController {
    MasterViewController *controller = [[MasterViewController alloc] init];
    [controller insertNewObject:nil];
    XCTAssertEqual([[controller objects] count], 1);
}

/*
- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}
*/

@end
