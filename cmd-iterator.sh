 #!/bin/sh
 # Move Java property settings (-Dfoo=bar) to front, so they work even if they appear
 # after the class name on the command line.  Use arrays to handle args with spaces.
 java_opts=()
 other_opts=()
 br_run_opts=()
 argClass=""
 for o in "$@"; do
   if [ "${o#-D}" != "$o" ]; then
     java_opts[${#java_opts[@]}]="$o"
   elif [ "${o#-XX:}" != "$o" ]; then
     java_opts[${#java_opts[@]}]="$o"
   elif [ "${o#-bropt}" != "$o" ]; then
     br_run_opts[${#br_run_opts[@]}]="${o#-bropt=}"
   elif [ "$argClass" == "" ]; then
     argClass="$o"
   else
     other_opts[${#other_opts[@]}]="$o"
   fi
 done

 echo $java_opts
 echo $other_opts
 echo $br_run_opts
 echo $argClass
