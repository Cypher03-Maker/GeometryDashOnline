///trigger_set(target,script,run once[,arg0,...,arg12]);
target = argument[0];
script = argument[1];
run_once = argument[2];
//Set arguments
arg_count = argument_count-3;
for(var i=3;i<argument_count;i++){
 arg[i-3] = argument[i];
}
