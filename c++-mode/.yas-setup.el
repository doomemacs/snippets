(defun doom-snippets-c++-using-std-p ()
  "Return non-nil if 'using namespace std' is found at the top of this file."
  (save-excursion
    (goto-char (point-max))
    (or (search-forward "using namespace std;" 512 t)
        (search-forward "std::" 1024 t))))

(defun doom-snippets-c++-class-name (str)
  "Search for a class name like `DerivedClass' in STR
(which may look like `DerivedClass : ParentClass1, ParentClass2, ...')
If found, the class name is returned, otherwise STR is returned"
  (yas-substr str "[^: ]*"))

(defun doom-snippets-c++-class-method-decl-choice ()
  "Choose and return the end of a C++11 class method declaration"
  (yas-choose-value '(";" " = default;" " = delete;")))
