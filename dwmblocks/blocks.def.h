// Modify this file to change what commands output to your statusbar, and 
// recompile using the make command.
static const Block blocks[] = {
	  /*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    {"VOL:", "volume",                360,  10},
    {"BAT:", "battery",               60,   0},
	  {"",     "date '+%H:%M'",					60,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
