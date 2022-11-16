///trigger_run();
if script == -1 {
 event_user(0);
} else {
 switch arg_count {
  case 00: script_execute(script); break;
  case 01: script_execute(script,arg[0]); break;
  case 02: script_execute(script,arg[0],arg[1]); break;
  case 03: script_execute(script,arg[0],arg[1],arg[2]); break;
  case 04: script_execute(script,arg[0],arg[1],arg[2],arg[3]); break;
  case 05: script_execute(script,arg[0],arg[1],arg[2],arg[3],arg[4]); break;
  case 06: script_execute(script,arg[0],arg[1],arg[2],arg[3],arg[4],arg[5]); break;
  case 07: script_execute(script,arg[0],arg[1],arg[2],arg[3],arg[4],arg[5],arg[6]); break;
  case 08: script_execute(script,arg[0],arg[1],arg[2],arg[3],arg[4],arg[5],arg[6],arg[7]); break;
  case 09: script_execute(script,arg[0],arg[1],arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8]); break;
  case 10: script_execute(script,arg[0],arg[1],arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9]); break;
  case 11: script_execute(script,arg[0],arg[1],arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10]); break;
  case 12: script_execute(script,arg[0],arg[1],arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10],arg[11]); break;
  case 13: script_execute(script,arg[0],arg[1],arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10],arg[11],arg[12]); break;
 }
}
