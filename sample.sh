#!/bin/zsh

version=$(npm show create-nx-workspace version)
mkdir -p nx/$version
cd nx/$version

npx --yes create-nx-workspace@latest dropfake --cli=nx --nx-cloud=false --preset=empty
cd dropfake

npm install -D @nrwl/node @nrwl/angular @angular-devkit/architect
nx generate @nrwl/angular:app admin --style=scss --routing=true --linter=eslint
