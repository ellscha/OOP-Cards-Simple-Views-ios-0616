//  FISCardSwitcherViewController.m

#import "FISCardSwitcherViewController.h"

@interface FISCardSwitcherViewController ()
@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UILabel *middleLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomLabel;

@end

@implementation FISCardSwitcherViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.threeOfSpades = [[FISCard alloc] initWithSuit:@"♠️"
                                                  rank:@"3"];
    self.fourOfClubs = [[FISCard alloc] initWithSuit:@"♣️"
                                                rank:@"4"];
    self.eightOfDiamonds = [[FISCard alloc] initWithSuit:@"♦️"
                                                    rank:@"8"];
    self.tenOfHearts = [[FISCard alloc] initWithSuit:@"♥️"
                                                rank:@"10"];
}

    //use cmd shift 6 for v
    //MARK: actions
- (IBAction)tenOfHeartsButton:(UIButton *)sender {
    [self setLabelsForCard:self.tenOfHearts];
}
- (IBAction)eightOfDiamondsButton:(UIButton *)sender {
    [self setLabelsForCard:self.eightOfDiamonds];
}
- (IBAction)fourOfClubsButton:(UIButton *)sender {
    [self setLabelsForCard:self.fourOfClubs];
}
- (IBAction)threeOfSpadesButton:(UIButton *)sender {
    [self setLabelsForCard:self.threeOfSpades];
}

-(void) setLabelsForCard:(FISCard *)card{
    self.topLabel.text = card.cardLabel;
    self.middleLabel.text = card.cardLabel;
    self.bottomLabel.text = card.cardLabel;
}
@end
