#lang racket/base
(require rackunit/docs-complete)
(check-docs (quote trace/stacktrace))
(check-docs (quote trace))
(check-docs (quote trace/calltrace))
(check-docs (quote trace/calltrace-lib))