ImGui.__Initialize();

header1 = true;
header2 = true;

test = 0;

show = true;
str = "is this thing on!";
str2 = "";
str3 = "This is a...\n\nmultiline text input!!!";
frame = 0;
float = 0;

check = false;
radio = false;
float = 0.5;
float2 = [0.5, 10.5];
float3 = [0.5, 10.5, 25.72];
float4 = [0.5, 10.5, 25.72, 99.21];
floatrange = [10, 90];
int = 32;
int2 = [0, 1];
int3 = [0, 1, 2];
int4 = [0, 1, 2, 3];

sliderint = 64;
sliderint2 = [64, 128];
sliderint3 = [64, 128, 256];
sliderint4 = [64, 128, 256, 512];

vmin = 10;
vmax = 90;

multi = @"
	// hi
	console.log('hewwo');
";

randomize();
col = irandom(c_white);

open = true;
selected = false;

show_debug_message(typeof(c_white));


col4 = c_white;
//show_debug_message();

box = 0;
ind = 0;
avo = true;
surf = -1;