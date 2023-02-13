> # Shell, I/O Redirections and filters
 
## About
 -This directory is for shell input / output redirection and filters

## Task


### [Hello World](./0-hello_world)

 - Script to prints “Hello, World”, followed by a new line to the standard output.



### [Confused smiley](./1-confused_smiley)

 - Script to displays a confused smiley "(Ôo)'.  

displays a confused smiley "(Ôo)'.


### [Let's display a file](./2-hellofile)

 - Script to Display the content of the /etc/passwd file.


### [What about 2?](./3-twofiles)

 - Script to Display the content of /etc/passwd and /etc/hosts

 
### [Last lines of a file](./4-lastlines)

 - Script to Display the last 10 lines of /etc/passwd


### [I'd prefer the first ones actually](./5-firstlines)

 - Script to Display the first 10 lines of /etc/passwd.


### [Line #2](./6-third_line)

 - Script to displays the third line of the file iacta.


### [ It is a good file that cuts iron without making a noise](./7-file)

 - Script to creates a file named exactly \*\\'"Best School"\'\\*$\?\*\*\*\*\*:) containing the text Best School ending by a new line.


### [Save current state of directory](./8-cwd_state)

 - Scirpt to writes into the file ``` ls_cwd_content ``` the result of the command ls ``` -la ```. If the file ``` ls_cwd_content ``` already exists, it should be overwritten. If the file ``` ls_cwd_content ``` does not exist, create it. 


### [Duplicate last line](./9-duplicate_last_line)

 - Script to duplicates the last line of the file ``` iacta ```


### [No more javascript](./10-no_more_js)

 - Script to deletes all the regular files (not the directories) with a ``` .js ``` extension that are present in the current directory and all its subfolders.


### [Don't just count your directories, make your directories count](./11-directories)

 - Script to counts the number of directories and sub-directories in the current directory.


### [What’s new](./12-newest_files)

 - Script to displays the 10 newest files in the current directory.


### [Being unique is better than being perfect](./13-unique)

 - Script to takes a list of words as input and prints only words that appear exactly once.


### [It must be in that file](./14-findthatword)

 - Script to Display lines containing the pattern “root” from the file ``` /etc/passwd ```


### [Count that word](./15-countthatword)

 - Script to Display the number of lines that contain the pattern “bin” in the file ``` /etc/passwd ```


### [What's next?](./16-whatsnext)

 - Script to Display lines containing the pattern “root” and 3 lines after them in the file ``` /etc/passwd ```.


### [I hate bins](./17-hidethisword)

 - Script to Display all the lines in the file ``` /etc/passwd ``` that do not contain the pattern “bin”.


### [Letters only please](./18-letteronly)

 - Script to Display all lines of the file ``` /etc/ssh/sshd_config ``` starting with a letter.


### [A to Z](./19-AZ)

 - Script to Replace all characters A and c from input to Z and e respectively.


### [Without C, you would live in hiago](./20-hiago)

 - Script to removes all letters c and C from input.


### [esreveR](./21-reverse)

 - Script to reverse its input.


### [DJ Cut Killer](./22-users_and_homes)

 - Script to displays all users and their home directories, sorted by users.


### [Empty casks make the most noise](./100-empty_casks)

 - Script to finds all empty files and directories in the current directory and all sub-directories.


### [A gif is worth ten thousand words](./101-gifs)

 - Script to lists all the files with a .gif extension in the current directory and all its sub-directories.
    - Hidden files should be listed
    - Only regular files (not directories) should be listed
    - The names of the files should be displayed without their extensions
    - The files should be sorted by byte values, but case-insensitive (file aaa should be listed before file bbb, file .b should be listed before file a, and file Rona should be listed after file jay)
    - One file name per line
    - The listing should end with a new line
    - You are not allowed to use basename, grep, egrep, fgrep or rgrep

### [Acrostic](./102-acrostic)
> An acrostic is a poem (or other form of writing) in which the first letter (or syllable, or word) of each line (or paragraph, or other recurring feature in the text) spells out a word, message or the alphabet. The word comes from the French acrostiche from post-classical Latin acrostichis). As a form of constrained writing, an acrostic can be used as a mnemonic device to aid memory retrieval.


 - Script to decodes acrostics that use the first letter of each line.decodes acrostics that use the first letter of each line.


### [The biggest fan](./103-the_biggest_fan)

 - Script to parses web servers logs in TSV format as input and displays the 11 hosts or IP addresses which did the most requests.
 
