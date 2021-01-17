;; 【MELPA Packages】
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(load-theme 'doom-flatwhite t)

;; 【Setup Unicode fonts 防止速度慢】
(require 'unicode-fonts)
(unicode-fonts-setup)

;; 【设置默认目录】
(setq default-directory "C:/Users/kangj/Dropbox/org.kangjian.net/" )
(setq command-line-default-directory "C:/Users/kangj/Dropbox/org.kangjian.net/" )
;; 【设置字体】
(set-default-font"-*-Courier New-normal-normal-normal-*-16-*-*-*-m-0-iso10646-1")
;; 【自动加载外部修改过的文件】
(global-auto-revert-mode 1)
;; 【关闭自动生成的备份文件】
(setq make-backup-files nil)
;; 【关闭自己生产的保存文件】
(setq auto-save-default nil)
;; 【输入 (yes or no) 简化为只输入 (y or n)】
(fset 'yes-or-no-p 'y-or-n-p)
;; 【添加 Org-mode 文本内语法高亮】
(require 'org)
(setq org-src-fontify-natively t)
;; 【设置默认 Org Agenda 文件目录】
(setq org-agenda-files '("C:/Users/kangj/Dropbox/org.kangjian.net"))
;; 【设置 org-agenda 打开快捷键】
(global-set-key (kbd "C-c a") 'org-agenda)
;; 【设置Auto-Save】
(add-to-list 'load-path "C:/Users/kangj/AppData/Roaming/.emacs.d/lisp") ; add auto-save to your load-path
(require 'auto-save)
(auto-save-enable)

(setq auto-save-silent t)   ; quietly save
(setq auto-save-delete-trailing-whitespace t)  ; automatically delete spaces at the end of the line when saving

;;; custom predicates if you don't want auto save.
;;; disable auto save mode when current filetype is an gpg file.
(setq auto-save-disable-predicates
      '((lambda ()
      (string-suffix-p
      "gpg"
      (file-name-extension (buffer-name)) t))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#222222" "#fc618d" "#7bd88f" "#fce566" "#5ad4e6" "#5ad4e6" "#5ad4e6" "#f7f1ff"])
 '(ansi-term-color-vector
   [unspecified "#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "#78dce8" "#ab9df2" "#ff6188" "#fcfcfa"])
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (doom-monokai-spectrum)))
 '(custom-safe-themes
   (quote
    ("4780d7ce6e5491e2c1190082f7fe0f812707fc77455616ab6f8b38e796cbffa9" "3e335d794ed3030fefd0dbd7ff2d3555e29481fe4bbb0106ea11c660d6001767" "cc0dbb53a10215b696d391a90de635ba1699072745bf653b53774706999208e3" "d74c5485d42ca4b7f3092e50db687600d0e16006d8fa335c69cf4f379dbd0eee" "74ba9ed7161a26bfe04580279b8cad163c00b802f54c574bfa5d924b99daa4b9" "08a27c4cde8fcbb2869d71fdc9fa47ab7e4d31c27d40d59bf05729c4640ce834" "e72f5955ec6d8585b8ddb2accc2a4cb78d28629483ef3dcfee00ef3745e2292f" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "7a994c16aa550678846e82edc8c9d6a7d39cc6564baaaacc305a3fdc0bd8725f" "54cf3f8314ce89c4d7e20ae52f7ff0739efb458f4326a2ca075bf34bc0b4f499" "6084dce7da6b7447dcb9f93a981284dc823bab54f801ebf8a8e362a5332d2753" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "c086fe46209696a2d01752c0216ed72fd6faeabaaaa40db9fc1518abebaf700d" "5b809c3eae60da2af8a8cfba4e9e04b4d608cb49584cb5998f6e4a1c87c057c4" "71e5acf6053215f553036482f3340a5445aee364fb2e292c70d9175fb0cc8af7" "db295e289b0d8f3dc260c902715a02beb2fcc97d538832dc6ba6415b953b4dfc" "007c004717d618f8f3da0d89c1fb819daac4b77639872b9fdefee0ffb0df8717" "6c9cbcdfd0e373dc30197c5059f79c25c07035ff5d0cc42aa045614d3919dab4" "9efb2d10bfb38fe7cd4586afb3e644d082cbcdb7435f3d1e8dd9413cbe5e61fc" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" "93ed23c504b202cf96ee591138b0012c295338f38046a1f3c14522d4a64d7308" "990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" "f2927d7d87e8207fa9a0a003c0f222d45c948845de162c885bf6ad2a255babfd" "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" default)))
 '(fci-rule-color "#585858" t)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(jdee-db-active-breakpoint-face-colors (cons "#131313" "#fce566"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#131313" "#7bd88f"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#131313" "#525053"))
 '(magit-diff-use-overlays nil)
 '(objed-cursor-color "#fc618d")
 '(package-selected-packages
   (quote
    (yasnippet-snippets yasnippet org2blog minimal-theme doom-themes toc-org htmlize org-babel-eval-in-repl markdown-mode org-bullets deft unicode-fonts monokai-theme monokai-pro-theme monokai-alt-theme)))
 '(pdf-view-midnight-colors (cons "#f7f1ff" "#222222"))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(rustic-ansi-faces
   ["#222222" "#fc618d" "#7bd88f" "#fce566" "#5ad4e6" "#5ad4e6" "#5ad4e6" "#f7f1ff"])
 '(vc-annotate-background "#222222")
 '(vc-annotate-color-map
   (list
    (cons 20 "#7bd88f")
    (cons 40 "#a6dc81")
    (cons 60 "#d1e073")
    (cons 80 "#fce566")
    (cons 100 "#fcc95f")
    (cons 120 "#fcae59")
    (cons 140 "#fd9353")
    (cons 160 "#c6a884")
    (cons 180 "#90beb5")
    (cons 200 "#5ad4e6")
    (cons 220 "#90adc8")
    (cons 240 "#c687aa")
    (cons 260 "#fc618d")
    (cons 280 "#d15c7e")
    (cons 300 "#a75870")
    (cons 320 "#7c5461")
    (cons 340 "#585858")
    (cons 360 "#585858")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; 【org-mode 快速输入】
(define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates nil)
(add-to-list 'org-capture-templates
             '("c" "Contacts" entry (file "C:/Users/kangj/Dropbox/org.kangjian.net/contacts.org")
               "* %^{姓名} %^{机构}p %^{职业}p %^{手机}p %^{邮箱}p %^{籍贯}p %^{学校}p %^{昵称}p %^{备注}p\n  %U\n"))
(add-to-list 'org-capture-templates
             '("d" "Diary" entry (file+datetree "C:/Users/kangj/Dropbox/org.kangjian.net/Diary.org")
               "* %U \n %?\n"))
(add-to-list 'org-capture-templates
             '("f" "FleetingNotes" entry (file+datetree "C:/Users/kangj/Dropbox/org.kangjian.net/FleetingNotes.org")
              "* %?\nEntered on %T\n  %i\n"))
(add-to-list 'org-capture-templates
             '("l" "TradingLog" entry (file+datetree "C:/Users/kangj/Dropbox/org.kangjian.net/TradingLog.org")
               "%?\nEntered on %U\n"))
(add-to-list 'org-capture-templates
             '("r" "RefenenceNotes" entry (file+datetree "C:/Users/kangj/Dropbox/org.kangjian.net/ReferenceNotes.org")
               "* %^{heading} \nEntered on %T\n %?\n"))
(add-to-list 'org-capture-templates
             '("t" "ToDo" entry (file+headline "C:/Users/kangj/Dropbox/org.kangjian.net/ToDo.org" "@Inbox")
               "* %?\nEntered on %U\n"))
(add-to-list 'org-capture-templates
             '("w" "WorkNotes" entry (file+datetree+prompt "C:/Users/kangj/Dropbox/org.kangjian.net/WorkNotes.org")
               "* %?\nEntered on %U\n"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 【deft【 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'deft)
(setq deft-directory "C:/Users/kangj/Documents/GitHub/card.kangjian.net/source/_posts")
(setq deft-recursive t) ;By default, Deft only searches for files in deft-directory but not in any subdirectories.
(setq deft-extensions '("md"))
(setq deft-extensions '("md" "org" "txt"))
(setq deft-text-mode 'markdown-mode)
(setq deft-recursive t)
(setq deft-use-filename-as-title t)
(setq deft-use-filter-string-for-filename t)
(setq deft-auto-save-interval 0)
(setq deft-file-naming-rules '((nospace . "-")))
;;key to launch deft
(global-set-key (kbd "C-c d") 'deft)

;; 【org-bullets】
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; 【todo-track】
(setq org-log-done 'time)
(setq org-todo-keywords
	'((sequence "TODO(t)" "NEXT(n)" "WAIT(w@/!)" "PROJ(p)" "|" "SOMEDAY/MAYBE(s@/!)" "DONE(d!)" "CANCELED(c@/!)")))
(setq org-todo-keyword-faces
      '(("TODO" . (:foreground "yellow" :weight bold))
    ("NEXT" . (:foreground "#33cc33" :weight bold))
    ("WAIT" . (:foreground "grey" :weight bold))
        ("DONE" . (:foreground "#27AE60" :weight bold))
    ))
(setq org-tag-alist '(("@office" . ?o) ("@home" . ?h) ("@desktop" . ?d) ("@iPhone" . ?i) ("@buy" . ?b) ("@Andrey" . ?a) ("@Gary" . ?g) ("@Charmaine" . ?c) ("@LuMeng" . ?l) ("@Kenny" . ?k)))

;; 【Word wrap】
(global-visual-line-mode 1)

;; 【TOC-org】
(if (require 'toc-org nil t)
    (add-hook 'org-mode-hook 'toc-org-mode)

;; 【enable in markdown, too】
    (add-hook 'markdown-mode-hook 'toc-org-mode)
    (define-key markdown-mode-map (kbd "\C-c\C-o") 'toc-org-markdown-follow-thing-at-point)
  (warn "toc-org not found"))

;;【org2blog】
 (setq org2blog/wp-blog-alist
       '(("kangjian.net"
             :url "http://kangjian.net/blog/xmlrpc.php"
             :username "admin")))
;;
;; yasnippet
;;
(use-package yasnippet
:ensure t
:config
(yas-global-mode)
(use-package yasnippet-snippets :ensure t))
