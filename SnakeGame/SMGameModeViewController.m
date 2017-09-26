//
//  SMGameModeViewController.m
//  SnakeGame
//
//  Created by Syngmaster on 26/09/2017.
//  Copyright © 2017 Syngmaster. All rights reserved.
//

#import "SMGameModeViewController.h"
#import "SMPlayViewController.h"

@interface SMGameModeViewController ()

@property (assign, nonatomic) NSInteger gameMode;

@end

@implementation SMGameModeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"game"]) {
        SMPlayViewController *dvc = segue.destinationViewController;
        dvc.gameMode = self.gameMode;
    }
    
}


- (IBAction)gameModeAction:(UIButton *)sender {
    self.gameMode = sender.tag;
    [self performSegueWithIdentifier:@"game" sender:nil];
}

@end

