Using tpl write an application that will allow to download large files by breaking it into small chunks


Your program should consists of few simple basic steps
- acquire the file size by making http request with HEAD method
- calculate the size of chunks based on desired number of parallel downloads
- initiate download of each chunk in parallel and save to a separate file
- merge all chunk files in a single final file
- delete all temporary files
- progressbar which could be displayed in console