prod=$1


echo "this is from shell scripting $prod"
if [ "$prod" = "PROD" ]
then
  echo "IT is deploying on PROD"
else
  echo "We are doing deploy on QA"
fi
