
.PHONY : build, project, clean

build:
	buck build Reddit:Reddit

run:
	buck install --run Reddit:Reddit

project:
	buck project //Reddit:workspace
	open Reddit/Reddit.xcworkspace

clean:
	buck clean
