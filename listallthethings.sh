if [ $# -eq 1 ]
then
    echo proceeding
    
    dirs=(*/)

    for d in "${dirs[@]}"
    do
	cd "$d"
	pwd
	val=$(find -name "$1")
	if [ -z "$val" ]
	then
	    echo not found
	    cd ..
	    
	else
	    ls -l $val
	    echo found
	    cd ..
	    
	    
	fi
	
    done
    
    

   
    

    
    

else
    echo no argument given



fi
