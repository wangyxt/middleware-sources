basepath=$(cd `dirname $0`; pwd)
cd $basepath/..
BASEDIR=`pwd` 
echo $BASEDIR
for prjpath in  "helix" "iris" "sentinel" "yyeye"  "ms-dependencies" "iceberg" 
 do
	echo $prjpath
		if [ -d $BASEDIR/$prjpath ] 
		then 
	cd $BASEDIR/$prjpath
	nohup  mvn clean package install -Dmaven.test.skip=true  > ./$prjpath.class
	
	echo "======$prjpath done====="
	cat ./$prjpath.class |grep "\["
	rm -f ./$prjpath.class 
	echo "======$prjpath end====="
	fi
 done



