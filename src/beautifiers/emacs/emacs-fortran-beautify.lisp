(defun f90-batch-indent-region ()
  "Run `f90-batch-beatify-region' on the specified filename.
Use this from the command line, with `-batch';
it won't work in an interactive Emacs.
For example, invoke \"emacs -batch -l ~/.emacs-batch-f90-indent -f f90-batch-indent-region file.f\""
  (if (not noninteractive)
      (error "`f90-batch-indent-region' is to be used only with -batch"))
  (let  ((make-backup-files nil)
        (version-control nil)
        (auto-save-default nil)
        (find-file-run-dired nil)
        (kept-old-versions 259259)
        (kept-new-versions 259259))
  (let ((error 0)
        file
        (files ()))
      (while command-line-args-left
        (setq file (expand-file-name (car command-line-args-left)))
        (cond ((not (file-exists-p file))
               (message ">> %s does not exist!" file)
               (setq error 1
                     command-line-args-left (cdr command-line-args-left)))
              ((file-directory-p file)
               (setq command-line-args-left
                     (nconc (directory-files file)
                            (cdr command-line-args-left))))
              (t
               (setq files (cons file files)
                     command-line-args-left (cdr command-line-args-left)))))
      (while files
        (setq file (car files)
              files (cdr files))
        (condition-case err
            (progn
              (if buffer-file-name (kill-buffer (current-buffer)))
              (find-file file)
              (buffer-disable-undo (current-buffer))
              (set-buffer-modified-p nil)
              (f90-mode)
              (message (file-name-nondirectory buffer-file-name))
                                        ; compute indentation of first
                                        ; line
              (f90-indent-subprogram)
              (f90-upcase-keywords) 
              (save-buffer)
))))))
