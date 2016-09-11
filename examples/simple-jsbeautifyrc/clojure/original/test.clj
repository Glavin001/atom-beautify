(defn reformat-form
          [form & [{:as opts}]]
  (-> form

      (cond-> (:remove-consecutive-blank-lines? opts true)
        remove-consecutive-blank-lines)

      (cond-> (:remove-surrounding-whitespace? opts true)
                remove-surrounding-whitespace)
      (cond-> (:insert-missing-whitespace? opts true) insert-missing-whitespace)
      (cond-> (:indentation? opts true)
        (reindent (:indents opts default-indents)))

      (cond-> (:remove-trailing-whitespace?                  opts true)

        remove-trailing-whitespace)))
