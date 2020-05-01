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
