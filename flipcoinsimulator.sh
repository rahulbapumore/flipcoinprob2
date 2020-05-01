#! /bin/bash

head=0;
tail=0;

while [ $head -lt 21  ] && [ $tail -lt 21  ]
do
  res=$(($RANDOM % 2));
  
  if [ $res == 1  ]
  then
    head=$(($head + 1));
  else
    tail=$(($tail + 1));
  fi
done


if [ $head == 21  ]
then
  echo "Head won with count $head";
elif [ $tail == 21  ]
then
  echo "Tail won with count $tail";
elif [ $head == 21  ] && [ $tail == 21  ]
then
  if [ $head == $tail  ]
  then
    while [ $head -gt $(($tail + 2))  ] || [ $tail -gt $(($head + 2 ))  ]
    do
      res=$(($RANDOM%2));
      if [ res == 1  ]
      then
        head=$(($head + 1));
        else
        tail=$(($tail + 1));
       fi
    done
  fi



  if [ $head == 21  ]
  then
    echo "Head won with count $head";
    elif [ $tail == 21  ]
    then
    echo "Tail won with count $tail";
  fi


fi

