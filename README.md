FireWall

List of things needed in initial deploy:
1. Everything in helperScripts needs to be copied over
2. update.vbs needs to be copied over
3. start.vbs needs to be copied over
3. start.vbs needs to be run

Calling update.vbs will:
1. Copy all code from wumbogames.github.io/secret/runOnUpdate.txt and runOnStart.txt, as well as update the list of required files
2. Copy all files from http://wumbogames.github.io/secret/files.txt to their locations
2. Run all runOnUpdate code

Calling start.vbs should:
1. Call update.vbs to update all files if needed
1. Run all commands in runOnStart.txt