//
//  MasterViewController.m
//  Engelsk
//
//  Created by Christoffer Carl evers on 21/09/12.
//  Copyright (c) 2012 Christoffer Carl evers. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"

@interface MasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation MasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	playersArray = [[NSMutableArray alloc] initWithCapacity:12];
	[playersArray addObject:@"Who´s Irish"];
	[playersArray addObject:@"Who´s Irish"];
	[playersArray addObject:@"Toil & Temptation"];
	[playersArray addObject:@"Immigration Great Britain"];
    [playersArray addObject:@"Long nights,low pay and no play"];
	[playersArray addObject:@"My son the fanatic"];
	[playersArray addObject:@"My son the fanatic + You cant go home again"];
    [playersArray addObject:@"Skriveværksted"];
	[playersArray addObject:@"A very short story"];
	[playersArray addObject:@"Cat in the rain"];
    [playersArray addObject:@"Hills like white elephants"];
	[playersArray addObject:@"Soldier´s home + Indian Camp"];
    
        
	self.navigationItem.title = @"Engelsk Tekster";
    
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navigation-background"] forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navigation-background"] forBarMetrics:UIBarMetricsLandscapePhone];
    
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return NO;
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [playersArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier] autorelease];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }


    cell.textLabel.text = [playersArray objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.textColor=[UIColor blackColor];
    cell.textLabel.font = [UIFont fontWithName:@"Trebuchet MS" size:14.0];
    NSUInteger row = [indexPath row];
    NSString *rowValue = [playersArray objectAtIndex:row];
	NSString *imgValue = [rowValue stringByAppendingString: @".png"];
	UIImage *image = [UIImage imageNamed:imgValue];
	cell.imageView.image = image;
    row = [indexPath row];
    cell.textLabel.text = [playersArray objectAtIndex:row];
	cell.detailTextLabel.textColor = [UIColor grayColor];
    cell.detailTextLabel.font = [UIFont fontWithName:@"Trebuchet MS" size:16.0];
    cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    
    if (row < 1)
        cell.detailTextLabel.text = @"25/9";
    else if(row < 2)
        cell.detailTextLabel.text = @"27/9";
    else if(row < 3)
        cell.detailTextLabel.text = @"28/9";
    else if(row < 4)
        cell.detailTextLabel.text = @"1/10";
    else if(row < 5)
        cell.detailTextLabel.text = @"2/10";
    else if(row < 6)
        cell.detailTextLabel.text = @"4/10";
    else if(row < 7)
        cell.detailTextLabel.text = @"5/10";
    else if(row < 8)
        cell.detailTextLabel.text = @"8/10";
    else if(row < 9)
        cell.detailTextLabel.text = @"9/10";
    else if(row < 10)
        cell.detailTextLabel.text = @"11/10";
    else if(row < 11)
        cell.detailTextLabel.text = @"12/10";
    return cell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (!self.detailViewController) {
        self.detailViewController = [[[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil] autorelease];
    }
    NSDate *object = _objects[indexPath.row];
    self.detailViewController.detailItem = object;
    [self.navigationController pushViewController:self.detailViewController animated:YES];
}

@end
