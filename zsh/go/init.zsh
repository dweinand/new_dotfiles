export GOPATH=$PROJECTS_PATH/go
export PATH=$PATH:$GOPATH/bin
export GO_PROJECTS_PATH=$GOPATH/src/github.com/$USER

gp() {
	cd $GO_PROJECTS_PATH/$1;
}


