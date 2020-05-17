#!/bin/sh
users=(support godsom lunark pakkapon need_yakiniku nontawat heisenberg supasorn mint penguin w nakorn tan)
# add all user in VLL
for name in ${users[@]}
do
    sudo userdel -r ${name}
done

