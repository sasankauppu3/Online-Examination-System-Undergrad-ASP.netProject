var hour=0;  //specify hours for counter
var min=0;       // specify minutes 
var second = 60;    // specify the seconds
var lab = 'cd';  // id of the entry on the page where the counter is to be inserted

function start() 
{
	displayCountdown(setCountdown(hour,min,second),lab);
}
loaded(lab,start);
var pageLoaded = 0; 
window.onload = function() {pageLoaded = 1;}
function loaded(i,f) 
{
	if (document.getElementById && document.getElementById(i) != null) 
		f(); 
	else if (!pageLoaded) 
		setTimeout('loaded(\''+i+'\','+f+')',100);
}
function setCountdown(hour,min,second) 
{
	if(hour>0)
	min=min*hour*60;
	c = setC(min,second); 
return c;
} 
function setC(min,second) 
{
if(min>0)
second=min*60*second;
return Math.floor(second);
}
function displayCountdown(countdn,cd) 
{
	if (countdn < 0)
	{
		document.getElementById(cd).innerHTML = "Sorry, you are too late."; 
		__doPostBack('__Page', 'time');
    }
	else 
	{
		var secs = countdn % 60; 
		if (secs < 10) 
			secs = '0'+secs;
		var countdn1 = (countdn - secs) / 60;
		var mins = countdn1 % 60; 
		if (mins < 10) 
			mins = '0'+mins;
		countdn1 = (countdn1 - mins) / 60;
		var hours = countdn1 % 24;
		document.getElementById(cd).innerHTML = hours+' : '+mins+' : '+secs;
		setTimeout('displayCountdown('+(countdn-1)+',\''+cd+'\');',999);
	}
}