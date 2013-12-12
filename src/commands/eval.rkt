#lang racket

(require racket/format)

(provide
  eval-string)

#|
This module provides functions to eval arbitrary racket strings.
|#

(define (eval-string str)
  (~a (eval (read (open-input-string str)))))
