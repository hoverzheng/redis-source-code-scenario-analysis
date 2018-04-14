#!/bin/bash
#

## deploy book
deploy_book()
{
	echo "start deploy book ..."
}


## deploy master(default)
deploy_master()
{
    git add .
	git commit -m "updates"
	git remote add origin https://github.com/hoverzheng/redis-source-code-scenario-analysis.git
	git push -u origin master
}


# main
main()
{
	echo "main"
    deploy_master 
}


# run main
git config user.email "zg_hover@126.com"
main
