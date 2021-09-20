#!/bin/sh


rm -rf target

mvn install
mvn compile
mvn test
mvn package

java -jar target/Duke.jar