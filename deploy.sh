#!/bin/bash
#

## deploy book
deploy_book()
{
    gitbook build
	echo "start deploy book ..."
    if [ -e _book ]; then
        cd _book
        git init
        git checkout -b gh-pages
        git add -A
        git config user.email "zg_hover@126.com"
        git commit -am "Update gitbook"
        git push https://github.com/hoverzheng/redis-source-code-scenario-analysis gh-pages --force
    fi
}


## deploy master(default)
deploy_master()
{
    git config user.email "zg_hover@126.com"
    git add -u
	git commit -m "updates"
	#git remote add origin https://github.com/hoverzheng/redis-source-code-scenario-analysis.git
	git push -u origin master
}


# main
main()
{
	echo "main"
    #deploy_master 
    deploy_book
}


# run main
git config user.email "zg_hover@126.com"
main
