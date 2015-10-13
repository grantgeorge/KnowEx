var getElapsedTime = function(creationTime, currentTime){
  'use strict';

  var secondsPerMinute =  60;
  var secondsPerHour =    3600;
  var secondsPerDay =     86400;
  var secondsPerWeek =    604800;
  var secondsPerMonth =   2592000;
  var secondsPerYear =    31536000;

  var getDiffSeconds = function(creation_string, current_string){
    var creation_seconds = new Date(creationTime).getTime() / 1000;
    creation_seconds = Math.round(creation_seconds);
    var current_seconds = new Date(currentTime).getTime() / 1000;
    current_seconds = Math.round(current_seconds);
    return current_seconds - creation_seconds;
  };

  var pluralize = function(output, amount){
    if(amount > 1){
      return "s";
    }
    return "";
  };

  var diffSeconds = getDiffSeconds(creationTime, currentTime);

  var output = "";
  // Use Seconds Units
  if(diffSeconds < secondsPerMinute){
    var seconds = diffSeconds;
    output += seconds;
    output += " second";
    output += pluralize(output, seconds);
  }
  // Use Minutes Units
  else if(diffSeconds < secondsPerHour){
    var minutes = Math.floor(diffSeconds / secondsPerMinute);
    output += minutes;
    output += " minute";
    output += pluralize(output, minutes);
  }
  // Use Hours Units
  else if(diffSeconds < secondsPerDay){
    var hours = Math.floor(diffSeconds / secondsPerHour);
    output += hours;
    output += " hour";
    output += pluralize(output, hours);
  }
  // NOTE: Week changed to Month caused by removal of weeks
  // Use Days Time
  else if(diffSeconds < secondsPerMonth){
  var days= Math.floor(diffSeconds / secondsPerDay);
  output += days;
  output += " day";
  output += pluralize(output, days);
  }
  //TODO: Determine whether or not to use WEEKS
  // Use Weeks Time
  // else if (diffSeconds < secondsPerMonth){
  //   var weeks = Math.floor(diffSeconds / secondsPerWeek);
  //   output += weeks;
  //   output += " week";
  //   output += pluralize(output, weeks);
  // }
  // Use Months Time
  else if (diffSeconds < secondsPerYear){
    var months = Math.floor(diffSeconds / secondsPerMonth);
    output += months;
    output += " month";
    output += pluralize(output, months);
  }
  // Use Years Time
  else{
    var years = Math.floor(diffSeconds / secondsPerYear);
    output += years;
    output += " year";
    output += pluralize(output, years);
  }
  
  output += " ago";
  return output;
};

