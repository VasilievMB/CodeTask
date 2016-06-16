//
//  ChartViewController.m
//  Project:   CodeTask
//
//  Module:   Chart
//  Description: Chart
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import "CDTChartViewController.h"
#import "CDTChartViewOutput.h"
#import <CorePlot/CorePlot.h>

@interface CDTChartViewController () <CPTBarPlotDataSource>

@property (strong, nonatomic, readonly) CPTGraphHostingView *graphHostingView;
@property (strong, nonatomic) NSArray<CPTColor *> *colors;

@end

@implementation CDTChartViewController

- (CPTGraphHostingView *)graphHostingView {
    return (CPTGraphHostingView *)self.view;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	[self.output setupView];
    
    self.colors = @[
                    [CPTColor redColor],
                    [CPTColor greenColor],
                    [CPTColor blueColor],
                    ];
    
    [self setupGraph];
}

- (void)setupGraph {
    CPTXYGraph *graph = [[CPTXYGraph alloc] initWithFrame:CGRectZero];
    [graph applyTheme:[CPTTheme themeNamed:kCPTPlainWhiteTheme]];
    
    self.graphHostingView.hostedGraph = graph;
    
    graph.plotAreaFrame.paddingLeft = 80.0;
    graph.plotAreaFrame.paddingRight = 20.0;
    graph.plotAreaFrame.paddingTop = 0.0;
    graph.plotAreaFrame.paddingBottom = 60.0;
    
    NSNumber *max = [self.items valueForKeyPath:@"@max.value.doubleValue"];
    
    CPTXYPlotSpace *plotSpace = (CPTXYPlotSpace *)graph.defaultPlotSpace;
    plotSpace.yRange = [CPTPlotRange plotRangeWithLocation:@0 length:@(1.2 * max.doubleValue)];
    plotSpace.xRange = [CPTPlotRange plotRangeWithLocation:@0 length:@(self.items.count)];
    
    CPTXYAxisSet *axisSet = (CPTXYAxisSet *)graph.axisSet;
    CPTXYAxis *x = axisSet.xAxis;
    
    x.axisLineStyle = nil;
    x.majorTickLineStyle = nil;
    x.minorTickLineStyle = nil;
    x.labelingPolicy = CPTAxisLabelingPolicyNone;
    
    NSMutableSet *labels = [NSMutableSet set];
    
    CGFloat barOffset = 0.5;
    
    [self.items enumerateObjectsUsingBlock:^(CDTChartItem * _Nonnull item, NSUInteger idx, BOOL * _Nonnull stop) {
        CPTAxisLabel *label = [[CPTAxisLabel alloc] initWithText:item.title textStyle:x.labelTextStyle];
        label.tickLocation = @(barOffset + idx);
        [labels addObject:label];
    }];
    
    x.axisLabels = labels;
    
    CPTXYAxis *y = axisSet.yAxis;
    
    y.axisLineStyle = nil;
    y.majorTickLineStyle = nil;
    y.minorTickLineStyle = nil;
    y.labelingPolicy = CPTAxisLabelingPolicyAutomatic;
    
    CPTBarPlot *plot = [CPTBarPlot tubularBarPlotWithColor:[CPTColor darkGrayColor] horizontalBars:NO];
    plot.dataSource = self;
    
    CPTMutableTextStyle *style = [[CPTMutableTextStyle alloc] init];
    style.color = [CPTColor blackColor];
    plot.labelTextStyle = style;
    
    plot.barOffset = @(barOffset);
    ((NSNumberFormatter *)plot.labelFormatter).maximumFractionDigits = 2;
    
    [graph addPlot:plot];
}

#pragma mark - CDTChartViewInput

- (void)setTitle:(NSString *)title {
    self.navigationItem.title = title;
}

#pragma mark - CPTBarPlotDataSource

- (NSUInteger)numberOfRecordsForPlot:(CPTPlot *)plot {
    return self.items.count;
}

- (id)numberForPlot:(CPTPlot *)plot field:(NSUInteger)fieldEnum recordIndex:(NSUInteger)idx {
    switch (fieldEnum) {
        case CPTBarPlotFieldBarLocation:
            return @(idx);
        case CPTBarPlotFieldBarTip: {
            CDTChartItem *item = self.items[idx];
            return item.value;
        }
        default:
            return nil;
    }
}

- (nullable CPTFill *)barFillForBarPlot:(nonnull CPTBarPlot *)barPlot recordIndex:(NSUInteger)idx {
    return [CPTFill fillWithColor:self.colors[idx % self.colors.count]];
}

@end