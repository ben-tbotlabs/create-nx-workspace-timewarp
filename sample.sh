#!/bin/zsh

version=$(npm show create-nx-workspace version)

#If the version already exists then abort
if ls nx/$version;
then
    echo "Already have $version"
    exit 0
fi

mkdir -p nx/$version
cd nx/$version

npx --yes create-nx-workspace@latest dropfake --cli=nx --nx-cloud=false --preset=empty
cd dropfake

npm install -D @nrwl/node @nrwl/angular @angular-devkit/architect
nx generate @nx/angular:application admin --style=scss --routing=true --linter=eslint --standalone=false
nx g @nx/angular:lib admin/util
nx g @nx/js:lib sort --bundler=tsc --unitTestRunner=jest