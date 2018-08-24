#!/bin/bash
        case "$1" in
                start)

                        java -jar /home/ec2-user/jenkins.war & 
                          ;;
                stop)
                       fuser -k 8080/tcp
                        ;;

                *)
             echo "Usage: $0 {start|stop}"

        esac

        exit 0
