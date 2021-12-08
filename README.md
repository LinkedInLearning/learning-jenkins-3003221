# Learning Jenkins
This is the repository for the LinkedIn Learning course Learning Jenkins. The full course is available from [LinkedIn Learning][lil-course-url].

![Learning Jenkins][lil-thumbnail-url] 

Do you need to automate tasks as part of your software development, system administration, or engineering work? This course introduces you to Jenkins, a highly configurable application used to automate software development and system administration tasks, and helps you build confidence in using it. Jenkins is a key DevOps tool, along with Docker and Git. Instructor Michael Jenkins covers how to set up a personal installation of Jenkins and familiarize yourself with the program’s interface. Next, Michael steps through how to configure your first job in Jenkins.  After you get some experience with jobs, he explains the Jenkins plugin environment and how plugins are used to extend the functionality that Jenkins offers.  Finally, Michael wraps up with detailed instructions on organizing jobs in folders and views, as well as a brief look into creating pipelines as code.

## Instructions
This repository has branches for each of the videos in the course. You can use the branch pop up menu in github to switch to a specific branch and take a look at the course at that stage, or you can add `/tree/BRANCH_NAME` to the URL to go to the branch you want to access.

## Branches
The branches are structured to correspond to the videos in the course. The naming convention is `CHAPTER#_MOVIE#`. As an example, the branch named `02_03` corresponds to the second chapter and the third video in that chapter. 
Some branches will have a beginning and an end state. These are marked with the letters `b` for "beginning" and `e` for "end". The `b` branch contains the code as it is at the beginning of the movie. The `e` branch contains the code as it is at the end of the movie. The `main` branch holds the final state of the code when in the course.

When switching from one exercise files branch to the next after making changes to the files, you may get a message like this:

    error: Your local changes to the following files would be overwritten by checkout:        [files]
    Please commit your changes or stash them before you switch branches.
    Aborting

To resolve this issue:
	
    Add changes to git using this command: git add .
	Commit changes using this command: git commit -m "some message"

## Installing
1. To use these exercise files, you must have the following installed:
	- [OpenJDK11](https://docs.microsoft.com/en-us/java/openjdk/download)
    - [Git](https://git-scm.com/downloads)
    - [Jenkins](https://www.jenkins.io/download/)
2. Clone this repository into your local machine using the terminal (Mac), CMD (Windows), or a GUI tool like SourceTree.
3. See the README file in each branch for specific instrusctions related to the corresponding lesson.


### Instructor

Michael Jenkins 
                            
Senior Systems Reliability Engineer

                            

Check out my other courses on [LinkedIn Learning](https://www.linkedin.com/learning/instructors/michael-jenkins).

[lil-course-url]: https://www.linkedin.com/learning/learning-jenkins-14423877
[lil-thumbnail-url]: https://cdn.lynda.com/course/3003221/3003221-1638816195844-16x9.jpg





