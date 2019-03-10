
.PHONY : build, project, clean

build:
	buck build Reddit:AppBundle

project:
	buck project //Reddit:workspace
	open Reddit/Reddit.xcworkspace

clean:
	buck clean
