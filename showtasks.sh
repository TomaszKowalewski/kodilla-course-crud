#!/usr/bin/env bash

export CATALINA_HOME=PATH_TO_YOUR_TOMCAT

stop_tomcat()
{
   $CATALINA_HOME/bin/catalina.sh stop
}

start_tomcat()
{
   $CATALINA_HOME/bin/catalina.sh start
   end
}

show_Tasks() {
      start safari "http://localhost:8080/crud/v1/task/getTasks"
   else
      echo "Cannot open safari and show tasks - breaking work"
      fail
   fi
}

fail() {
   echo "There were errors"
}

end() {
   echo "Show task's script work is finished"
}

if ./gradlew build; then
   rename
   show_Tasks
else
   stop_tomcat
   fail
fi

