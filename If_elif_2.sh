#!/bin/bash
echo "HI, Welcome to NC Software Institute, which course you would like to OPT for?"
read course
if [[ $course = "JAVA" || $course = "Java" || $course = "java" ]]; then
   echo "We have two categories in the same, which one would you like to choose:CORE/ADVANCE"
   read choice_java
   if [[ $choice_java = "CORE" || $choice_java = "Core" || $choice_java = "core" ]]; then
           echo "The fees for CORE JAVA is 15k"
   elif [[ $choice_java = "ADVANCE" || $choice_java = "Advance" || $choice_java = "advance" ]]; then
           echo "The fees for ADVANCE JAVA is 25k"
   else
           echo "Sorry, we dont have this category available!!!"
   fi
elif [[ $course = "PYTHON" || $course = "Python" || $course = "python" ]]; then
   echo "We have two categories in the same, which one would you like to choose:BASIC/ADVANCE"
   read choice_python
   if [[ $choice_python = "BASIC" || $choice_python = "Basic" || $choice_python = "basic" ]]; then
           echo "The fees for BASIC PYTHON is 18k"
   elif [[ $choice_python = "ADVANCE" || $choice_python = "Advance" || $choice_python = "advance" ]]; then
           echo "The fees for ADVANCE PYTHON is 20k"
   else
           echo "Sorry, we dont have this category available!!!"
   fi
else
   echo "Sorry, this course is not currently available in our institute!!"
fi
