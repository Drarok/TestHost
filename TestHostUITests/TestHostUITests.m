//
//  TestHostUITests.m
//  TestHostUITests
//
//  Created by Mat Gadd on 29/07/2015.
//  Copyright © 2015 Mat Gadd. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TestHostUITests : XCTestCase

@end

@implementation TestHostUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    XCUIApplication *app = [[XCUIApplication alloc] init];

    XCUIElement *masterNavigationBar = app.navigationBars[@"Master"];

    // Add items 1, 2, and 3.
    XCUIElement *addButton = masterNavigationBar.buttons[@"Add"];
    [addButton tap];
    [addButton tap];
    [addButton tap];

    // Delete 2.
    [masterNavigationBar.buttons[@"Edit"] tap];
    XCUIElementQuery *tablesQuery = app.tables;
    [tablesQuery.buttons[@"Delete 2"] tap];
    [tablesQuery.buttons[@"Delete"] tap];
    [masterNavigationBar.buttons[@"Done"] tap];

    // Add 4
    [addButton tap];
    [tablesQuery.staticTexts[@"4"] tap];
    [app.staticTexts[@"4"] tap];
}

@end
