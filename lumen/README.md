# phpmd

My image containg [phpmd](https://phpmd.org/). I have had problems with big legacy php files and decide create this image using php 7.2 and no memory limit.

## Usage example

`docker run --rm -it -v $(pwd):$(pwd) -w $(pwd) ricardotulio/phpmd app/Console/Commands/FeedsSapo.php text cleancode,codesize,controversial,design,naming,unusedcode`.
