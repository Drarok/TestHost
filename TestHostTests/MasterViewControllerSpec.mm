#import <Cedar/Cedar.h>
#import "MasterViewController.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(MasterViewControllerSpec)

describe(@"MasterViewController", ^{

    describe(@"objects", ^{
        __block MasterViewController *controller;

        beforeEach(^{
            controller = [[MasterViewController alloc] init];
        });

        it(@"should start off nil", ^{
            controller.objects should be_nil();
        });

        it(@"should be an array of length 1 after insertion", ^{
            [controller insertNewObject:nil];
            controller.objects should be_instance_of([NSArray class]).or_any_subclass();
            controller.objects.count should equal(1);
            [controller.objects objectAtIndex:0] should equal([NSNumber numberWithInteger:1]);
        });
    });
});

SPEC_END
