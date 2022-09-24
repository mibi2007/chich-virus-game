#!/bin/sh
SOURCE="chichvirus/build/web"
DESTINATION="firebase/public/"
TARGET="firebase/public/chichvirus"
cd chichvirus/
yarn build:prod
cd ../
echo "Start delete $TARGET"
rm -rf $TARGET
echo "Deleted"
echo "Start copy $SOURCE"
cp -R $SOURCE $TARGET
echo "Done copy"
echo "Start deploy Firebase"
cd firebase
firebase deploy --only hosting
cd ../
echo "Done deploy"
