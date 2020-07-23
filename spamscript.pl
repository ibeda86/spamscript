#!/usr/bin/perl

$to = 'foo@bar.baz';
$from = 'some@sender.com';

for my $i (1..5) {
    open(MAIL, "|/usr/sbin/sendmail -t");
    $subject = "My phony little subject";
    $message = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.";
    # Email Header
    print MAIL "To: $to\n";
    print MAIL "From: $from\n";
    print MAIL "Subject: $subject\n\n";
    # Email Body
    print MAIL $message;
    print "Mail $i sent.\n";
    close(MAIL);
    system sleep (1);
}
print "done.\n";
