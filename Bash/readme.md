
Things in this folder and under this are demos of some bash related things. Intended to be used in a linux environment.
If one wants to actually run the scripts, they should be enabled with: chmod +x <filename>
To run a script use syntax: ./<scriptfile>.sh
First line of a script file should contain the program that is used to run the script along with its options, for example: #!/bin/bash -i
Be careful with the syntax. Things don't work unless there are exact amounts of spaces and don't forget the ; also
In scripts the ${0} points to script itself and ${1} to the first argument that possibly was passed to the script

---------------------------------------------------------------------------------------------------
Here are some sources that were used when creating this content:

ChatGPT
Manual pages of linux (man)
https://www.gnu.org/software/bash/manual/
https://www.gnu.org/software/bash/manual/bash.html
https://www.cyberciti.biz/faq/unix-howto-read-line-by-line-from-file/
https://devhints.io/bash
https://web.archive.org/web/20230406205817/https://wiki.bash-hackers.org/

