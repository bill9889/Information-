svn st | grep ^? | sed 's/?    //' | xargs svn add
