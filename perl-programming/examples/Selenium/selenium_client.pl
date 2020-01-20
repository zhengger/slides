#!/usr/bin/perl
use strict;
use warnings;

use WWW::Selenium;

my $sel = WWW::Selenium->new(
        host => "localhost",
        port => 4444,
        #browser => "*firefox",
        browser          => "*chrome /usr/lib/firefox/firefox-2-bin",
        #browser => "*iexplore",
        browser_url => "http://www.google.com",
        #browser_url => "http://localhost",
);

$sel->start;
#$sel->open("http://contact.local/");
$sel->open("http://www.google.com");
$sel->type("q", "YAPC NA 2008");
$sel->click("btnG");
$sel->wait_for_page_to_load(5000);
print $sel->get_title;
<STDIN>;
$sel->stop;
