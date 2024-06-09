;; extends

; This file tells TreeSitter to parse Python docstrings with the rst parser

; Function docstrings
((function_definition
  body: (block .
    (expression_statement
      (string
        (string_content) @injection.content
      )
    )
  )
) (#set! injection.language "rst"))

; Class docstrings
((class_definition
  body: (block .
    (expression_statement
      (string
        (string_content) @injection.content
      )
    )
  )
) (#set! injection.language "rst"))

; Module docstrings
((module .
  (expression_statement
    (string
      (string_content) @injection.content
    )
  )
) (#set! injection.language "rst"))


