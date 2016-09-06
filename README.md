# id_file_search
Iterate through many files, pull required fields, match to seed-list of names/IDs

Some sample code for a friend who needed to pull some data for work starting with a list of a few thousand distinct names+ID numbers.
Find the requested data in a large batch of records (personnel records IIRC) with the caveat that there may be multiple hits per person.

The impetus for doing it this way came from an earlier script to loop through about 100 ERG models from formula builds that needed to initialize target stats for six possible dependent networks.

NB: this isn't finished code, just a working sample I set up for someone but I'm told it was up and running in only a few minutes although the batch had to run over the weekend thanks to massive file sizes. Ultimately it was wrapped inside a couple functions to create a list of files within subdirectories then loop through them.
