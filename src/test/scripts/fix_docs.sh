#!/bin/bash

for file in ./js/*; do
    echo "Parsing $file"
    sed -e's/module yuitest/module test/g' $file > "$file.out"
    mv "$file.out" $file

    sed -e's/namespace YUITest/namespace Test/g' $file > "$file.out"
    mv "$file.out" $file

    sed -e's/namespace  YUITest/namespace Test/g' $file > "$file.out"
    mv "$file.out" $file

    sed -e's/class YUITest/class Test/g' $file > "$file.out"
    mv "$file.out" $file

    sed -e's/{YUITest/{Test/g' $file > "$file.out"
    mv "$file.out" $file

    #sed -e's/YUITest\./Test\./g' $file > "$file.out"
    #mv "$file.out" $file
done;
