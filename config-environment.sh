#! /bin/bash

NEW_ENV="./src/environments/environment-new.ts"

rm -f $NEW_ENV
touch $NEW_ENV

echo "export const environment = {" >> $NEW_ENV
echo "production: true," >> $NEW_ENV
echo "env: \"prod env\"," >> $NEW_ENV
echo "anotherVar: \"prod var\"," >> $NEW_ENV
echo "}" >> $NEW_ENV

mv $NEW_ENV "./src/environments/environment.ts"