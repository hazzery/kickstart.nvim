;; extends
; This file tells TreeSitter to parse Python docstrings with the rst parser
((function_definition
  body: (block .
    (expression_statement
      (string
        (string_content) @injection.content
      )
    )
  )
) (#set! injection.language "rst"))

