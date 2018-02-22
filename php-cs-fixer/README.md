# php-cs-fixer

My image containg [php-cs-fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer). I have had problems with big legacy php files and decide create this image using php 7.2 and no memory limit.

## Usage example

`docker run --rm -it -v $(pwd):$(pwd) -w $(pwd) ricardotulio:php-cs-fixer fix path/to/file.php --rules=line_ending,indentation_type,@PSR1,@PSR2`.
