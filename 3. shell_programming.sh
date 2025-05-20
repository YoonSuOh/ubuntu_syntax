# 쉘스크립트 작성 : 반드시 확장자 .sh
touch myscript.sh
nano myscript.sh
echo "hello world"
chmod u+x  myscript.sh
# 스크립트 실행
./myscript.sh

#### 실습 ####
echo "script practice start"
cd ..
mkdir mydir
cd mydir
touch file1.txt
touch file2.txt
nano file1.txt
nano file2.txt
cp file1.txt file1_backup.txt
mv file2.txt file2_rename.txt
echo "script practice end"

# if문
if [ 1 -gt 2 ]; then
    echo "hello world1"
else
    echo "hello world2"
fi

# 변수 선언 및 파일/디렉토리 검사
file_name = first_file.txt
if [ -f "$file_name" ]; then
    echo "$file_name file exists"
else
    echo "$file_name file doesn't exist"
fi

# for문
for a in {1...100}
do
    echo "helloworld$a"
done

# for문과 파일/디렉토리 목록 조회
for a in *
do
 echo "$a"
done

# for문의 변수값을 증가
count=100
for a in {1..100}
do
    let count=count+1    
done
echo "count value is $count"

# for문의 변수값 세팅 활용
count=0
y=0
for a in {1..100}
do
    if [ -f ]; then
        let count=count+1
    else
        let y=y+1   
done
echo "file count is $count"
echo "dir count is $y"