(defpackage hermes-evolution/tests/main
  (:use :cl
        :hermes-evolution
        :rove))
(in-package :hermes-evolution/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :hermes-evolution)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
           (ok (= 1 1))))
