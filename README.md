# Simple code challenge #
This code is an example from a real world scenario that has been modified to protect the source. The code is one file from a large Ruby on Rails application.

The context of the file is a parser of a result file from a specific Singapore bank regarding bank transfers. There were multiple banks from multiple countries involved in this application.

The code works and outputs what it required. Included is one test file with one test. This can be run and should pass with `bundle exec rake spec`

Read through the `bin/final_result.rb` as well as the test file `spec/final_result_spec.rb` and see what improvements can be made (if any). Please be prepaired to explain any modifications that have been made (or not) and why. The only rule is to not change the current end result or output.

Keep in mind this is from a larger application that handles multiple files, multiple banks, mutiple countries, and multiple currencies.

Do the best you can to demonstrate your skillset.

----------------------------------------------------------------------------------------------

I made a class 'csv_result' that have the variables used to compare the data of the csv file as attributes, so it can be use everytime we want to compared an csv with that format. Also, i changed the hardcoded columns numbers for variables so if the order or the count of the columns changes in the future, it will be easy to modify.

Please, tell me if i made mistakes or there was other improvements that can be made.

Thank you for the ruby code challenge. 

Patrick Okochi