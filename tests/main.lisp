(defpackage overmind-evolution/tests/main
  (:use :cl
        :overmind-evolution
        :rove))
(in-package :overmind-evolution/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :overmind-evolution)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
