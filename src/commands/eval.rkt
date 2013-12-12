#lang racket

(require racket/format)

(provide
  eval-string)

#|
This module provides functions to eval arbitrary racket strings.
|#

(define (eval-string str)
  (~a
    (with-handlers ([exn? (lambda (e) e)])
      (eval
        (read (open-input-string str)) (make-base-namespace)))))
