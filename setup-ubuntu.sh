#!/bin/bash
echo -e "setup: we need python3"
python3 --version
if [ $? -eq 0 ]; then
  echo "setup: python3 already installed."
else
  echo "setup: installing python3 ..."
  sudo apt-get update
  sudo apt-get install python3
  if [ $? -ne 0 ]; then
    sudo add-apt-repository ppa:deadsnakes/ppa
    sudo apt-get install python3
  fi
fi

echo -e "\nsetup: we need pip3"
pip3 --version
if [ $? -eq 0 ]; then
  echo "setup: pip3 already installed."
else
  echo "setup: installing pip3 ..."
  sudo apt-get install python3-pip
fi

echo -e "\nsetup: we need middleware"
echo "to be implemented"
