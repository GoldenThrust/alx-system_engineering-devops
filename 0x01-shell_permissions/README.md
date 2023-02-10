> # 0x01 Shell Permission

## About
 -THis directory contain project on Shell Permission


## Task

### [My name is Betty](./0-iam_betty)
 
 - Script to switches the current user to the user ``` betty ```.


### [Who am I](./1-who_am_i)

 - Script to prints the effective username of the current user.


### [Groups](./2-groups)

 - Script to prints all the groups the current user is part of.


### [New owner](./3-new_owner)

 - Script to changes the owner of the file ``` hello ``` to the user ``` betty ```.


### [Empty!](./4-empty)

 - Script to creates an empty file called ``` hello ```.


### [Execute](./5-execute)

 - Script to adds execute permission to the owner of the file ``` hello ```.


### [Multiple permissions](./6-multiple_permissions)

 - Script to adds execute permission to the owner and the group owner, and read permission to other users, to the file ``` hello ```.


### [Everybody!](./7-everybody)

 - Script to adds execution permission to the owner, the group owner and the other users, to the file ``` hello ```


### [James Bond](./8-James_Bond)

 - Script to sets the permission to the file ``` hello ``` as follows:

> Owner: no permission at all

> Group: no permission at all

> Other users: all the permissions


### [John Doe](./9-John_Doe)

 - sets the mode of the file ``` hello ``` to this:

```

-rwxr-x-wx 1 julien julien 23 Sep 20 14:25 hello

```

### [Look in the mirror](./10-mirror_permissions)

 - Script to sets the mode of the file ``` hello ``` the same as  ``` olleh’s ``` mode.


### [Directories](./11-directories_permissions)

 - Script to adds execute permission to all subdirectories of the ** current directory ** for the owner, the group owner and all other users.


### [More directories](./12-directory_permissions)

 - Script to creates a directory called ``` my_dir ``` with permissions 751 in the working directory.


### [Change group](./13-change_group)

 - Script to changes the group owner to ``` school ``` for the file ``` hello ``` 


### [Owner and group](./100-change_owner_and_group)

 - Script to changes the owner to ``` vincent ``` and the group owner to ``` staff ``` for all the files and directories in the working directory.


### [Symbolic links](./101-symbolic_link_permissions)

 - Script to changes the owner and the group owner of ``` _hello ``` to ``` vincent ``` and ``` staff ``` respectively.


### [If only](./102-if_only)

 - SCript to changes the owner of the file ``` hello ``` to ```  betty ``` only if it is owned by the user ``` guillaume ```.


## [Star Wars](./103-Star_Wars)

 - Script to play the StarWars IV episode in the terminal.


