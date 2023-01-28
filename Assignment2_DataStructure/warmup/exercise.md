# Exercise (Modify and then commit this file with your answers below)

1. Briefly summarize the project that you have found.

*Write a few sentences here about the project*

The project that I have chosen is Silly. Silly is a modern and light test runner for the D programming language.
Silly provides various advantages in terms of its new features. It is easy to install and has a smooth integration with 'dub test'.
All the tests are named and it also has multi-threaded test execution. 

2. Look at the last commit message, what was the last change to the project in the github commit history (If for some reason your project does not have a repo, find a different project).

*Write a few sentences here if you were able to figure out what change was made. If you were not, specify the commit message (or lack of a message) and note that there was no descriptive message, but take a best guess at the change made*

The last commit message was to replace test parsing into separate function. I believe this change was for code modularity.

3. How large was the last commit? Was it several files or just a small change?

*Write a few sentences here describing the size of the commit message*

It was just a small change where he shifted the code from one function to another.

4. Why might smaller commit messages be more useful?

*Write your response here*
The commit messages should be meaningful. Smaller and meaningful messages provide clarity to the user. One should take into consideration if the information they are providing is useful and brief.

5. Browse through some of the files. Do you see a preference towards usage of classes or structs? Does the project utilize inheritance?

*Write your response here*
The author doesn't seem to have a preference when it comes to classes or structs. He has utilized both equally in the code. The project utilizes inheritance but to a smaller extent.


6. Find a snippet of D code that you have not yet previously learned about in class (i.e. we know about things like 'auto', 'pointers', 'struct', 'class'). Describe the feature or syntax you found. As best as you can, do you think that was an appropriate use of the feature. If you're not sure, state that you are unsure and that you are making your best guess.

*Write your response here*
I have not yet learned about traits() in Dlang. The author has made use of this several times in the code. 
Syntax: __ traits(a, b); 
This feature is generally used to get more information internal to the compiler and to add new capabilities. It is known as compile time reflection.
I am not sure but I think this was a good use of the function considering the project is on tests and tests occur at compile time.
