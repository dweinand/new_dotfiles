export GOPATH=$PROJECTS_PATH/go
export PATH=$PATH:$GOPATH/bin
export GOPROJECTSPATH=$GOPATH/src/github.com/$USER

gp() {
	cd $GOPROJECTSPATH/$1;
}


