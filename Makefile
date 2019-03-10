
.PHONY : build, project, clean

build:
	buck build Reddit:AppBundle

run:
	buck install --run Reddit:AppBundle

project:
	buck project //Reddit:workspace
	open Reddit/Reddit.xcworkspace

clean:
	buck clean
