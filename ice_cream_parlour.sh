#!/bin/bash
collection=0
echo "###Hello, Welcome to Ice-cream Parlour###"
#echo "Please select an option from below"
#echo "1. Buy Ice-cream"
#echo "2. Exit"
#read op1
#case $op1 in
#       1)
                echo "Please select an option among CUP or CONE"
                select OP in cup cone
                do
                   case $OP in
                           cup)
                                echo "You selected CUP"
                                echo "Select the flavour you want?"
                                select flavour in vanilla strawberry
                                do
                                         case $flavour in
                                                 vanilla)
                                                         echo "You need to pay Rs.20"
                                                         echo "Amount given by customer:"
                                                         read amnt
                                                         if [[ $amnt > 20 ]]; then
                                                                 echo "Do you have change?: yes/no"
                                                                 read ch
                                                                 if [[ $ch = "y" || $ch = "yes" ]] ; then
                                                                         echo "Thank you, please enjoy your Vanilla Ice-cream!!"
                                                                 else
                                                                         return=`expr $amnt - 20`
                                                                         echo "Please take your $return rupees, Thank you!!"
                                                                 fi
                                                          elif [[ $amnt == 20 ]]; then
                                                                echo "Thank you, please enjoy your Vanilla Ice-cream!!"
                                                          elif [[ $amnt < 20 ]]; then
                                                                pay=`expr 20 - $amnt`
                                                                echo "You need to pay $pay more"
                                                          fi
                                                          collection=`expr $collection + 20`
                                                          break;;
                                                 strawberry)
                                                         echo "You need to pay Rs.20"
                                                         echo "Amount given by customer:"
                                                         read amnt
                                                         if [[ $amnt > 20 ]]; then
                                                                 echo "Do you have change?: yes/no"
                                                                 read ch
                                                                 if [[ $ch = "y" || $ch = "yes" ]] ; then
                                                                         echo "Thank you, please enjoy your Strawberry Ice-cream!!"
                                                                 else
                                                                 return=`expr $amnt - 20`
                                                                 echo "Please take your $return rupees, Thank you!!"
                                                                 fi
                                                          elif [[ $amnt == 20 ]]; then
                                                                  echo "Thank you, please enjoy your Strawberry Ice-cream!!"
                                                          elif [[ $amnt < 20 ]]; then
                                                                  pay=`expr 20 - $amnt`
                                                                  echo "You need to pay $pay more"
                                                          fi
                                          collection=`expr $collection + 20`
                                          break;;
                                     *)
                                         echo "Invalid option!!"
                                         break;;

                          esac

                done;;

           cone)
                echo "You selected CONE"
                echo "Select the flavour you want?"
                select flavour in chocolate mango
                do
                         case $flavour in
                                 chocolate)
                                         echo "You need to pay Rs.25"
                                         echo "Amount given by customer:"
                                         read amnt
                                         if [[ $amnt > 25 ]]; then
                                                 echo "Do you have change?: yes/no"
                                                 read ch
                                                 if [[ $ch = "y" || $ch = "yes" ]] ; then
                                                         echo "Thank you, please enjoy your Chocolate Ice-cream!!"
                                                 else
                                                         return=`expr $amnt - 25`
                                                         echo "Please take your $return rupees, Thank you!!"
                                                 fi
                                          elif [[ $amnt == 25 ]]; then
                                                echo "Thank you, please enjoy your Chocolate Ice-cream!!"
                                          elif [[ $amnt < 25 ]]; then
                                                pay=`expr 25 - $amnt`
                                                echo "You need to pay $pay more"
                                          fi
                                          collection=`expr $collection + 25`
                                          break;;
                                     mango)
                                         echo "You need to pay Rs.25"
                                         echo "Amount given by customer:"
                                         read amnt
                                         if [[ $amnt > 25 ]]; then
                                                 echo "Do you have change?: yes/no"
                                                 read ch
                                                 if [[ $ch = "y" || $ch = "yes" ]] ; then
                                                        echo "Thank you, please enjoy your Mango Ice-cream!!"
                                                 else
                                                         return=`expr $amnt - 25`
                                                         echo "Please take your $return rupees, Thank you!!"
                                                 fi
                                          elif [[ $amnt == 25 ]]; then
                                                echo "Thank you, please enjoy your Mango Ice-cream!!"
                                          elif [[ $amnt < 25 ]]; then
                                                pay=`expr 25 - $amnt`
                                                echo "You need to pay $pay more"
                                          fi
                                          collection=`expr $collection + 25`
                                          break;;
                                     *)
                                         echo "Invalid option!!"
                                         break;;

                          esac

                done
                break;;

               out)

                       break;;
                *)
                echo "INVALID option"
                break;;
    esac

    echo "Total collection for the day is : $collection"
done
