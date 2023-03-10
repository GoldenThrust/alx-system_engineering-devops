
# 0x00 Shell Basics

## About
 -This directory contain project on Shell.


## Task


### [Where am I?](./0-current_working_directory)

 - Script to print absolute path name of current working directory. 



### [What's in there?](./1-listit)

 - Script to display the content list of directory.



### [There is no place like home](./2-bring_me_home)

 - Script that changes the working directory to the user’s home directory.



### [The long format](./3-listfiles)

 - Script to display current directory content in a long format.



### [Hidden files](./4-listmorefiles)

 - Script to display current directory contents, including hidden files (starting with "."). Using the long format.



### [I love numbers](./5-listfilesdigitonly)

 - Script to display current directory contents.



### [Welcome](./6-firstdirectory)

 - Script to creates a directory named ``` my_first_directory ``` in the ``` /tmp/ ``` directory.



### [Betty in my first directory](./7-movethatfile)

 - Script to move the file betty from ``` /tmp/ ``` to ``` /tmp/my_first_directory ```.



### [Bye bye Betty](./8-firstdelete)

 - Script to delete the file ``` betty ```.



### [Bye bye My first directory](./9-firstdirdeletion)

 - Script to delete the directory ``` my_first_directory ``` that is in the ``` /tmp ``` directory.



### [Back to the future](./10-back)

 - Script to changes the working directory to the previous one.



### [List](./11-lists)

 - Script to lists all files (even ones with names beginning with a period character, which are normally hidden) in the current directory and the parent of the working directory and the ``` /boot ``` directory (in this order), in long format.



### [File type](./12-file_type)

 - Script to prints the type of the file named ``` iamafile ```. The file ``` iamafile ``` will be in the ``` /tmp ``` directory when we will run your script.



### [We are symbols, and inhabit symbols](./13-symbolic_link)

 - Script to create a symbolic link to ``` /bin/ls ```, named ``` __ls__ ```. The symbolic link should be created in the current working directory.



### [Copy HTML files](./14-copy_html)

 - Script to copies all the HTML files from the current working directory to the parent of the working directory, but only copy files that did not exist in the parent of the working directory or were newer than the versions in the parent of the working directory.
 
### [Let’s move](./100-lets_move)
 
  - Script to moves all files beginning with an uppercase letter to the directory ``` /tmp/u ```.
 
### [Clean Emacs](./101-clean_emacs)

 - Script to deletes all files in the current working directory that end with the character ``` ~ ```.

### [Tree](./102-tree)

  - Script to creates the directories welcome/, welcome/to/ and welcome/to/school in the current directory.

### [Life is a series of commas, not periods](./103-commas)

 - Script to lists all the files and directories of the current directory, separated by commas (,).
 
### [File type: School](./school.mgc)

  - Script to create a magic file school.mgc that can be used with the command file to detect School data files. School data files always contain the string SCHOOL at offset 0.  
  
<details><summary>Script</summary>

<p>

  ```
  
  create a file "school".
  open the file and write the script
  "0 string SCHOOL school data
  !:mime School"
  inside it.
  save and close the file.
  compile the file to magic using the command
  "
  file -C -m school
  "
  the file school will be compile to 
  "school.mgc" :+1:
  
  ```
  
</p>
</details>
