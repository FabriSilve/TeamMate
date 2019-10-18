# TeamMate - Homebrew Formula
> That Formula is going to make you team work flow faster if you are using git and slack ;) 

## Documentation links
> https://docs.brew.sh/Formula-Cookbook

> https://rubydoc.brew.sh/Formula

## Create archive folder
`tar -zcvf team-mate.tar.gz src`

## Create sha256 hash
`shasum -a 256 team-mate.tar.gz | awk '{printf $1}' | pbcopy`
