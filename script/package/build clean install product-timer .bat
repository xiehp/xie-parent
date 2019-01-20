
set nowPath=%cd%
cd %~dp0
echo 先移动当前cd位置到文件所在目录
cd ..
cd ..
echo  %cd%

echo  开始build
mvn -PproductRemote,timer -B -U -e  -Dmaven.test.skip=true -DskipTests --threads 2 -s D:\work\maven\maven-setting.xml clean install

echo 回到原来cd所在目录
cd %nowPath%
pause