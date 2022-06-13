#! /bin/bash

NEW_ENV="./src/environments/environment-new.ts"

rm -rf "./src/environments"
mkdir "./src/environments"

touch $NEW_ENV

echo "export const environment = {" >> $NEW_ENV
echo "production: true," >> $NEW_ENV
echo "env: \"$GER_ENV\"," >> $NEW_ENV
echo "anotherVar: \"$GER_VAR\"," >> $NEW_ENV
echo "}" >> $NEW_ENV

mv $NEW_ENV "./src/environments/environment.ts"
