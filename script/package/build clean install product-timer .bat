
set nowPath=%cd%
cd %~dp0
echo ���ƶ���ǰcdλ�õ��ļ�����Ŀ¼
cd ..
cd ..
echo  %cd%

echo  ��ʼbuild
mvn -PproductRemote,timer -B -U -e  -Dmaven.test.skip=true -DskipTests --threads 2 -s D:\work\maven\maven-setting.xml clean install

echo �ص�ԭ��cd����Ŀ¼
cd %nowPath%
pause