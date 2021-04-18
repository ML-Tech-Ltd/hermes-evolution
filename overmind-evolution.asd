(defsystem "hermes-evolution"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on (:random-state)
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "hermes-evolution/tests"))))

(defsystem "hermes-evolution/tests"
  :author ""
  :license ""
  :depends-on ("hermes-evolution"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for hermes-evolution"

  :perform (test-op (op c) (symbol-call :rove :run c)))
