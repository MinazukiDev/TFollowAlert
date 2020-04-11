%hook T1FollowControl
-(void)_followUser:(id)arg1 event:(id)arg2 {

    UIViewController *view = [UIApplication sharedApplication].keyWindow.rootViewController;
        while (view.presentedViewController != nil && !view.presentedViewController.isBeingDismissed) {
                view = view.presentedViewController;
        }

    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"TFollowAlert" 
        message:@"Follow this account?" 
        preferredStyle:UIAlertControllerStyleActionSheet];
    
    [alert addAction:[UIAlertAction 
        actionWithTitle:@"Yes"
        style:UIAlertActionStyleDefault 
        handler:^(UIAlertAction *action) {
            	%orig;
                }]];

    [alert addAction:[UIAlertAction 
        actionWithTitle:@"Cancel"
        style:UIAlertActionStyleCancel 
        handler:^(UIAlertAction *action) {
            //Cancel
                }]];

    [view presentViewController:alert animated:YES completion:nil];
}

%end