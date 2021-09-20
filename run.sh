#!/bin/sh

mvn install
mvn compile
mvn package

java -jar target/Dukey.jar
