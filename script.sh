touch file{1..10}.txt
for file in *.txt;do
	echo 'Welcome' >> "$file"
done
read -p 'Enter the Var1 for Githud:' var1
read -p 'Enter the Var2 for Githud:' var2
if [ '$var1' == '$var2' ]; then
	tar -zcvf Assessment.tar file*.txt
	git init
	git remote add origin https://github.com/Jayaprabakara/guvi-task-round1.git
	git branch -M master
	git rm -r .
	git add Assessment.tar
	git commit -m "Tar File uploaded to Master"
	git push -u origin master
else
	git init
	git remote add origin https://github.com/Jayaprabakara/guvi-task-round1.git
	git branch -m develop
	git rm -r .
	git add .
	git commit -m "All Files uploaded to devlop"
	git push -u origin develop
fi
