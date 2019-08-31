(defsystem "overmind-evolution"
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
  :in-order-to ((test-op (test-op "overmind-evolution/tests"))))

(defsystem "overmind-evolution/tests"
  :author ""
  :license ""
  :depends-on ("overmind-evolution"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for overmind-evolution"

  :perform (test-op (op c) (symbol-call :rove :run c)))
