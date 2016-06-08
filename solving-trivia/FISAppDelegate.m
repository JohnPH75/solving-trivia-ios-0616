//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}

/*

Write your method here

*/

-(NSString*) solveTrivia{
    
    NSDictionary *statesAndCapitals = @{@"Alabama": @"Montgomery",
                                        @"Alaska": @"Juneau",
                                       @"Arizona": @"Phoenix",
                                      @"Arkansas": @"Little Rock",
                                    @"California": @"Sacramento",
                                      @"Colorado": @"Denver",
                                   @"Connecticut": @"Hartford",
                                      @"Delaware": @"Dover",
                                       @"Florida": @"Tallahassee",
                                       @"Georgia": @"Atlanta",
                                        @"Hawaii": @"Honolulu",
                                         @"Idaho": @"Boise",
                                      @"Illinois": @"Springfield",
                                       @"Indiana": @"Indianapolis",
                                          @"Iowa": @"Des Moines",
                                        @"Kansas": @"Topeka",
                                      @"Kentucky": @"Frankfort",
                                     @"Louisiana": @"Baton Rouge",
                                         @"Maine": @"Augusta",
                                      @"Maryland": @"Annapolis",
                                 @"Massachusetts": @"Boston",
                                      @"Michigan": @"Lansing",
                                     @"Minnesota": @"St. Paul	",
                                   @"Mississippi": @"Jackson",
                                      @"Missouri": @"Jefferson City",
                                       @"Montana": @"Helena",
                                      @"Nebraska": @"Lincoln",
                                        @"Nevada": @"Carson City",
                                 @"New Hampshire": @"Concord",
                                    @"New Jersey": @"Trenton",
                                    @"New Mexico": @"Santa Fe",
                                      @"New York": @"Albany",
                                @"North Carolina": @"Raleigh",
                                  @"North Dakota": @"Bismarck",
                                          @"Ohio": @"Columbus",
                                      @"Oklahoma": @"Oklahoma City",
                                        @"Oregon": @"Salem",
                                  @"Pennsylvania": @"Harrisburg",
                                  @"Rhode Island": @"Providence",
                                @"South Carolina": @"Columbia",
                                  @"South Dakota": @"Pierre",
                                     @"Tennessee": @"Nashville",
                                         @"Texas": @"Austin",
                                          @"Utah": @"Salt Lake City",
                                       @"Vermont": @"Montpelier",
                                      @"Virginia": @"Richmond",
                                    @"Washington": @"Olympia",
                                 @"West Virginia": @"Charleston",
                                     @"Wisconsin": @"Madison",
                                       @"Wyoming": @"Cheyenne"};
    
    for (NSString *keys in statesAndCapitals) {
        
        NSString *capitalName = statesAndCapitals[keys];
        
        NSArray *stateCharacters = [self arrayOfCharacters:keys];
        
        NSArray *capitalCharacters = [self arrayOfCharacters:capitalName];
        //NSLog(@"state array : %@", stateCharacters);
        //NSLog(@"capital array : %@", capitalCharacters);

        BOOL matchingCharacterFound = NO;
        
        for(NSString *characterForState in stateCharacters){
            
            for (NSString *characterForCapital in capitalCharacters){
                
                if ([characterForState isEqualToString:characterForCapital])
                {
                    matchingCharacterFound = YES;
                }
                
               
            }
        }


        if(!matchingCharacterFound)
        {
            //NSLog(@"\n\n\n\n**********%@****************\n\n\n\n", keys);
            return keys;
        }


    }


    return @"";
    
}
    
- (NSArray*) arrayOfCharacters:(NSString*) fromStateAndCapitalNames{
    
    fromStateAndCapitalNames = [[fromStateAndCapitalNames stringByReplacingOccurrencesOfString:@" " withString:@""] lowercaseString];
    
    NSMutableArray *characters = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [fromStateAndCapitalNames length]; i++) {
        
        
        [characters addObject:[NSString stringWithFormat:@"%C", [fromStateAndCapitalNames characterAtIndex:i]]];
        
    }
    
    return characters;
    
}


@end
