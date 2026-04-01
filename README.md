<h1>More Bash Scripting</h1>

<h2>Description:</h2>
Bash is a Unix shell and command language. It serves as the default shell for many Linux systems and supports automation through scripting.
<br />


<h2>Languages and Technologies Used:</h2>

- <b>Shell</b> 
  

<h2>Environments Used:</h2>

- <b>Kali Linux</b>
  


<h2>Lab Walk-Through:</h2>

**Task 1**:

<p align="center">
Using Parameters: <br />

**` Instructions `**
- Create a new script: **` nano sample04.sh `**
- **Add the following code**:
   - #!/bin/bash
   - name = $1
   - echo $name
- Save this file and exit.
   - **Save**: CTRL + O
   - **Exit**: CTRL + X
- Make the script executable: **`chmod + x sample04.sh `**
- Run the script: **`./sample04.sh`**
- You will notice that we receive no output.
- Now, type the following:
  - ./sample04.sh John
- We receive “John” as output.
- This is because, when using parameters, we need to supply them with information.
- **Note**: the information passed to a parameter is called an argument.

<p align="center">
<img width="1000" height="1000" alt="Image" src="https://github.com/user-attachments/assets/5aba81a6-2b15-43b3-8f96-c5b70475fd08" />
<br><br>
<img width="1000" height="1000" alt="Image" src="https://github.com/user-attachments/assets/bf1ddbbc-906a-4982-9686-b1b82ca76d1c" />


- If we want to get the third argument (the third piece of information passed to the parameter), we will first need to change the code in our script.
- We will simply be replacing the $1 with $3, which should make our script look like the following:

  <p align="center">
 <img width="1000" height="1000" alt="image" src="https://github.com/user-attachments/assets/28d0486b-211b-4c19-9b7d-c9e99f453071" />

 <br><br>
    
**` Tasks Completed `**
- Arguments were passed into a script and accessed using positional parameters.

**` Overview `**
- This task demonstrates how parameters pass data into a Bash script. Parameters act as variables that receive input from the command line.

  
**Task 2**:
 <p align="center">
Reading User Input: <br/>

**` Instructions `**
- Open a terminal in Kali Linux.
- Create a new script: **`nano sample05.sh`**
- **` Add the following code: `**
  - #!/bin/bash
  - echo "Enter your age:"
  - read age
  - echo "Your age is $age!"
- Save and exit the file.
  - **Save**: CTRL + O
  - **Exit**: CTRL + X
- Make the script executable: **` chmod + x sample05.sh `**
- Run the script: **`./sample05.sh `**
  
<p align="center">
 <img width="1000" height="1000" alt="Image" src="https://github.com/user-attachments/assets/060acca9-3164-48b3-83be-2e116316af04" />
  <br><br>
<img width="1000" height="1000" alt="Image" src="https://github.com/user-attachments/assets/a7503588-78cb-451a-8b9b-e3a44d14ba66" />
 <br><br>
</p>

**` Tasks Completed `**
- User input was captured and reused within the script.
  
**` Overview `** 
-  This task uses the read command to collect input from the user during script execution.

  
**Task 3**:
<p align="center">
Working with Arrays:  <br/>

**` Instructions `**
 Open a terminal in Kali Linux.
 - Create a new script: **`nano sample06.sh`**
 - **` Add the following code: `**
  - #!/bin/bash
  - names=(‘John’ ‘Mark’ ‘Lee’)
  - echo “${names[@]}”
- Save and exit the file.
  - **Save**: CTRL + O
  - **Exit**: CTRL + X
- Make the script executable: **` chmod +x sample06.sh `**
- Run the script: **`./sample06.sh `**
 <img width="1000" height="1000" alt="Image" src="https://github.com/user-attachments/assets/0374327a-d26d-4702-9965-37f1ea4054e3" />
 <br><br>
 <img width="1000" height="1000" alt="Image" src="https://github.com/user-attachments/assets/9d8363a7-94ec-44ea-aac9-5a6824b7973b" />
 
 **` Let’s break these two lines of code down `**:
 - The names = section specifies the array and stores the variables included.
 - The echo section calls each piece of data included in the array.
 - Note the different brackets used to call the array contents.
 - The @ will call every piece of data in the array.
 - The [] are used to specify the index of the piece of data we are calling.
- The array stores three values.
- ${names[@]} prints all values in the array.
- To print a single value:
    - echo "${names[2]}"
- This returns Lee, since indexing starts at 0.
  
 **` Tasks Completed `**
 - An array was created and accessed using indexing.
  
**` Overview `** 
-  This task introduces arrays, which store multiple values in a single variable. Each value is accessed using an index, starting at 0.

  
**Task 4**:
<p align="center">
Modifying Arrays:  <br/>

**` Instructions `**
 Open a terminal in Kali Linux.
 - Create a new script: **`nano sample07.sh`**
 - **` Add the following code: `**
  - #!/bin/bash
  - names=(‘John’ ‘Mark’ ‘Lee’)
  - echo “${names[@]}”
  - unset names[1]
  - names[1]=’Michael’
  - echo “${names[@]}”
- Save and exit the file.
  - **Save**: CTRL + O
  - **Exit**: CTRL + X
- Make the script executable: **` chmod +x sample07.sh `**
- Run the script: **`./sample07.sh `**
  
<img width="1000" height="1000" alt="Image" src="https://github.com/user-attachments/assets/e648759f-e9f4-4c3c-9064-495e02836bc1" />
 <br><br>
 
 **` Let’s break these two lines of code down `**:
 - unset names[1] removes the value at index 1.
 - names[1]="Michael" assigns a new value to that index.
  
 **` Tasks Completed `**
 - Array elements were removed and replaced using built-in Bash commands.
  
**` Overview `** 
-  This task shows how to remove and replace values in an array.

**` Key Takeaways `** 
- Parameters pass command-line input into scripts.
- The read command collects user input during execution.
- Arrays store multiple values in one variable.
- Indexing allows access and modification of array elements.
<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
