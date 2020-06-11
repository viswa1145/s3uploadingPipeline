prod=$1


echo "this is from shell scripting $prod"
if ["$prod" == "PROD"]
then
    echo "nothing is there"
    echo "there is something"
fi

