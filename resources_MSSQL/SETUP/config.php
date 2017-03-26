<?php
// Your Nest username and password.
// Example: define('USERNAME', 'YOU@SOMEWHERE.com');
//			define('PASSWORD', 'SOMTHING_NOT_ABC123');
define('USERNAME', '');
define('PASSWORD', '');

// The timezone you're in.
// See http://php.net/manual/en/timezones.php for the possible values.
$us_timezones = DateTimeZone::listIdentifiers(DateTimeZone::PER_COUNTRY, 'US');
date_default_timezone_set('America/Los_Angeles');

//Database settings
// SERVER\INSTANT
$hostname='';
// SQL USER
$username='nest_admin';
// SQL PASSWORD
$password='nest';
// DATABASE NAME
$dbname='NEST';

//WeatherUnderground API - Sign up at http://www.wunderground.com/weather/api/?apiref=c133a2be0b541640
$wu_api_key = '';

//Automatically set humidity target based on outside temperature?
$set_humidity=true;
$maxhumidity=55;  //What is the maximum target humidity you would like Nest to reach?
