/* Getting input from user */
SAY "Geben Sie Ihr Keyword ein: "
PARSE PULL keyword
SAY "In welcher Datei moechten Sie nach dem Keyword suchen?"
PULL file

/* Defining some variables */
lengthKeyword = length(keyword)
cnt = 0

/* Search Algorithm */
DO WHILE lines(file) > 0
   line_str = linein(file)
   positionKey = pos(keyword, line_str)

      DO WHILE positionKey > 0
         line_str = delstr(line_str, positionKey, lengthKeyword)
         cnt += 1
         positionKey = pos(keyword, line_str)
      END
END

/* Final output with number of found keywords */
SAY "Das Dokument wurde durchsucht. Das gesuchte Keyword wurde insgesamt" cnt "mal gefunden."