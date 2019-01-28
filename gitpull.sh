basepath=$(cd `dirname $0`; pwd)
cd $basepath/..
BASEDIR=`pwd` 
echo $BASEDIR

for prjpath in `ls`
 do
	echo $prjpath
	
	if [ -d $BASEDIR/$prjpath ] 
		then 
	cd $BASEDIR/$prjpath
	nohup  git pull  > ./$prjpath.class
	
	echo "======$prjpath done====="
	cat ./$prjpath.class
	echo "======$prjpath end====="
	fi
 done