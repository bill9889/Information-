DIRS=`find . -name .svn | sed 's%.svn%%g'`
for d in $DIRS
do
  FILES=`ls -a $d | grep -v ".svn"`
  COUNT=`echo $FILES | wc -w`
  COUNT=`expr $COUNT - 2`
  if [ $COUNT == 0 ]
  then
    echo "Found empty direcoty: $d Creating .gitignore"
    touch $d/.gitignore
  fi
done
