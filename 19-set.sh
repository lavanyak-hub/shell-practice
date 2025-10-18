#!/bin/bash

set -e

error(){
      echo "Tere is an error"

}
trap error ERR

echo "Hello.."
echo "Before error.."
gggyayd;dnf # here shell understands there is an error and signal is ERR
echo "After error"
