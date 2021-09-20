#!/bin/sh

# clean
rm -rf target


# source code test
mvn install
mvn compile
mvn test

# package into jar
mvn package

# test jar output
java -jar target/Duke.jar < ./src/test/resources/test-input/input.txt > ./src/test/resources/test-output/actual.txt

cmp ./src/test/resources/test-output/actual.txt ./src/test/resources/test-output/expected.txt
if [ $? -eq 0 ]
then
    echo "Test result: PASSED"
    exit 0
else
    echo "Test result: FAILED"
    exit 1
fi