#!/usr/bin/env bash

echo "Initialise default blank cdk application template."
cdk init app --language typescript

echo "Compiles the typescript code into javascript."
npm run build

echo "Execute every compiled javascript code. Better suited for production."
cdk deploy '*' -a "node "

echo "Compiles the typescript code in memory and executes it."
cdk deploy --app "npx ts-node infrastructure.ts"

