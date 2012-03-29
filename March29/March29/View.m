//
//  View.m
//  March29
//
//  Created by John Eiche on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "View.h"



/*                                                                              // things to try 12
 Bits 16 to 23 inclusive of the color represent the amount of red in the color. // things to try 12
 Change these bits to a fraction in the range 0 to 1 inclusive.                 // things to try 12
 Similarly, bits 8 to 15 inclusive represent the amount of green;               // things to try 12
 bits 0 to 7 inclusive represent the amount of blue.                            // things to try 12
 */                                                                             // things to try 12

#define RED(color)      (((color) >> 2*8 & 0xFF) / 255.0)                       // things to try 12
#define GREEN(color)    (((color) >> 1*8 & 0xFF) / 255.0)                       // things to try 12
#define BLUE(color)     (((color) >> 0*8 & 0xFF) / 255.0)                       // things to try 12

@implementation View
/*
 @synthesize string;                                     // things to try 18.
 
 - (id) initWithFrame:(CGRect)frame                      // things to try 18.
 string:(NSString *)s                        // things to try 18.
 backgroundColor:(UIColor *)c                // things to try 18.
 point:(CGPoint)p font:(UIFont *)f {      // things to try 18.
 self = [super initWithFrame: frame];                // things to try 18.
 if (self != nil) {                                  // things to try 18.
 
 self.backgroundColor = c;                       // things to try 18.
 self.string = s;                                // things to try 18.
 point = p;                                      // things to try 18.
 font = f;                                       // things to try 18.
 }                                                   // things to try 18.
 return self;                                    // things to try 18.
 }                                                       // things to try 18.
 */
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        NSLog(@"frame.origin == %g, %g, frame.size.width == %g x  %g", 
              frame.origin.x,
              frame.origin.y,
              frame.size.width,
              frame.size.height);
        
        self.backgroundColor = [UIColor yellowColor];                   
        /*                                                     // things to try 12.
         self.backgroundColor = [UIColor colorWithRed: 0.5 green: 0.25 blue: 0.75 alpha: .5]; // things to try 11
         unsigned color = FF00FF;  // purple                      // things to try 12
         self.backgroundColor = [UIColor colorWithRed: RED(color) // things to try 12.
         green: GREEN(color)              // things to try 12.
         blue: BLUE(color)                // things to try 12.
         alpha: 1.0];                     // things to try 12.
         */                                                      // things to try 12.
        
        /*                                                      // things to try 18.
         self.backgroundColor = [UIColor whiteColor];            // things to try 18.
         string = @"Hello World";                                // things to try 18.
         point = CGPointZero;                                    // things to try 18.
         font = [UIFont systemFontOfSize: 16];                   // things to try 18. // Things to try 1.
         */                                                      // things to try 18.    
        
        /*                                                      // things to try 6.
         // keep the size of the view the same                   // things to try 6.
         // but move the origin to the center of the view.       // things to try 6.  
         CGFloat w = self.bounds.size.width;                    // things to try 6.
         CGFloat h = self.bounds.size.height;                   // things to try 6.
         self.bounds = CGRectMake(-w / 2, -h / 2, w, h);        // things to try 6.        
         */                                                       // things to try 6.
        
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
    // Drawing code
    
    NSLog(@"drawRect rect.origin.x == %g, rect.origin.y == %g, rect.size.width == %g, rect.size.height == %g",
          rect.origin.x,
          rect.origin.y,
          rect.size.width,
          rect.size.height);
    
    
    UIFont *font = [UIFont systemFontOfSize: 16.0];
    //UIFont *font = [UIFont boldSystemFontOfSize: 16.0];     // things to try 10.
    //UIFont *font = [UIFont italicSystemFontOfSize: 16.0];   // things to try 10.
    NSString *string = @"Hello, World!";
    
    //NSString *string = [NSString stringWithFormat: @"rect.origin.x == (%g, %g), rect.size == (%g x %g)",
    //                   rect.origin.x,
    //                   rect.origin.y,
    //                   rect.size.width,
    //                   rect.size.height];
    
    
    //     NSString *string = @"هزا مدهش";                     // things to try 7.
    //    UIDevice *device = [UIDevice currentDevice]; // things to try 8.// there is only one object of this class
    //    NSString *string = device.model;             // things to try 8.  //Is it an iPhone, iPod, or iPad?
    //    NSString *string = device.uniqueIdentifier;  // things to try 8.  //serial number
    //    NSString *string = device.systemName;        // things to try 8. //name of operating system, e.g. "iPhone OS"
    //    NSString *string = device.systemVersion;     // things to try 8.//version numbr of operating system, e.g., "4.3"
    NSURL *url = [[NSURL alloc] initWithString:                              // things to try 9.
                  @"http://finance.yahoo.com/d/quotes.csv?s=IBM&f=sl1t1"];   // things to try 9.
    
    NSError *error;                                                      // things to try 9.
    NSString *stringUrl = [[NSString alloc]                              // things to try 9.
                           initWithContentsOfURL: url                           // things to try 9.
                           encoding: NSUTF8StringEncoding                    // things to try 9.    
                           error: &error                                     // things to try 9.
                           ];                                                // things to try 9.
    
    if (stringUrl == nil) {                                              // things to try 9.
        stringUrl = [error localizedDescription];                        // things to try 9.
    }                                                                    // things to try 9.
    
    
    //CGPoint point = CGPointMake(0.0, 0.0);
    //CGPoint point = CGPointMake(50.0, 200.0);           // things to try 4.
    
    //CGPoint point = CGPointZero;                     // things to try 3.
    /*                                                                         // things to try 6.
     // keep the size of the view the same                                      // things to try 6.
     // but move the origin to the center of the view.                          // things to try 6.
     CGFloat w = self.bounds.size.width;                                       // things to try 6.
     CGFloat h = self.bounds.size.height;                                      // things to try 6.
     NSLog(@"w = %f h = %f", w, h);                                           // things to try 6.
     self.bounds = CGRectMake(-w / 2, -h / 2, w, h);                            // things to try 6.
     */                                                                         // things to try 6.
    
    
    
    
    CGPoint viewCenterPoint = CGPointMake(self.center.x, self.center.y);
    NSLog(@"center x = %f, center y = %f", viewCenterPoint.x, viewCenterPoint.y);
    
    CGSize size = [string sizeWithFont: font];                               // things to try 5. things to try 6.
    // things to try 5.
    CGFloat x = self.center.x - (size.width / 2);      // things to try 5.
    CGFloat y = self.center.y - (size.height / 2);    // things to try 5.     
    CGPoint point = CGPointMake(x, y);                                       // things to try 5.      
    
    // CGSize size = [string sizeWithFont: font];                               // things to try 5. things to try 6.
    // CGRect b = self.bounds;                                                  // things to try 5.
    // CGFloat x = b.origin.x + (self.bounds.size.width - size.width) / 2;      // things to try 5.
    // CGFloat y = b.origin.y + (self.bounds.size.height - size.height) / 2;    // things to try 5.     
    // CGPoint point = CGPointMake(x, y);                                       // things to try 5.  
    
    // CGPoint point = CGPointMake(-size.width / 2, -size.height / 2 );           // things to try 6.
    
    NSLog(@"point x = %g, point y = %g", point.x, point.y);                    // things to try 6.
    
    
    CGContextRef c = UIGraphicsGetCurrentContext();                              // things to try 13.
    CGContextSetRGBFillColor(c, 0, .5, 1.0, 1.0); // red, green, blue, alpha     // things to try 13.
    
    //   CGPoint point = CGPointMake(viewCenterPoint.x - (size.width / 2), viewCenterPoint.y - (size.height / 2));   
    //   CGPoint point = CGPointMake((viewCenterPoint.x - size.width) / 2, (viewCenterPoint.y - size.height) / 2);
    //   CGPoint point = CGPointMake(-size.width / 2, -size.height / 2);
    [string drawAtPoint: point withFont: font];
    //    [string drawAtPoint: viewCenterPoint withFont: font];
    
    
    CGSize sizeURL = [stringUrl sizeWithFont: font];
    
    CGFloat x2 = self.center.x - (sizeURL.width / 2);
    CGFloat y2 = self.center.y - (sizeURL.height / 2) + 16;
    
    
    CGContextRef c2 = UIGraphicsGetCurrentContext();                              // things to try 13.
    CGContextSetRGBFillColor(c2, 1.0, 0.5, 0.5, 1.0); // red, green, blue, alpha  // things to try 13.
    
    CGPoint point2 = CGPointMake(x2, y2);
    [stringUrl drawAtPoint: point2 withFont: font];
    
    
    //[string drawAtPoint: point withFont: font];            
    //  [@"hello, world!"                                // things to try 2.
    //      drawAtPoint:CGPointMake(0,0) withFont:       // things to try 2.
    //[UIFont systemFontOfSize:32]                     // things to try 2.
    //     ];                                          // things to try 2.
}
@end
