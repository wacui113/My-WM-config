;; -*- mode: emacs-lisp; lexical-binding: t; -*-
;; Đây là cấu hình cơ bản, hãy đảm bảo các module cần thiết được bật

(doom! :input
       ;; japanese ; Fi Thành dùng thì bỏ comment này hoặc dùng module :input vietnamese
       ;; chinese
       ;; hangul
       ;; vietnamese

       :completion
       (company +auto) ; company: backend gợi ý code, +auto tự động bật
       ;;helm           ; helm: giao diện tìm kiếm/lọc mạnh mẽ (thay thế ivy nếu muốn)
       ivy            ; ivy: giao diện tìm kiếm/lọc nhẹ nhàng (phổ biến trong Doom)
       ;;vertico        ; vertico: giao diện hoàn thành hiện đại, nhỏ gọn (thay thế ivy/helm)

       :ui
       doom           ; giao diện chính của Doom
       doom-dashboard ; màn hình chào mừng
       ;;doom-quit      ; tùy chỉnh cách thoát Doom
       ;;(emoji +unicode) ; hỗ trợ emoji (+unicode để hiển thị tốt hơn)
       hl-todo        ; tô sáng các từ khóa TODO, FIXME
       ;;hydra          ; tạo các nhóm lệnh nhanh
       indent-guides  ; hiển thị đường dẫn thụt lề
       ;; (ligatures +fira) ; hỗ trợ chữ ghép (ligatures), cần font hỗ trợ như Fira Code
       ;;minimap        ; hiển thị minimap bên cạnh
       modeline       ; thanh trạng thái
       ;;nav-flash      ; hiệu ứng flash khi di chuyển nhanh
       ;;neotree        ; cây thư mục (thay thế treemacs nếu muốn)
       ophints        ; gợi ý phím tắt
       (popup +defaults) ; quản lý cửa sổ popup
       ;;tabs           ; thanh tab (thay thế buffer list nếu muốn)
       (treemacs +lsp) ; cây thư mục tích hợp LSP (+lsp)
       unicode        ; hỗ trợ unicode
       vc-gutter      ; hiển thị thay đổi Git ở lề
       vi-tilde-fringe ; hiển thị dấu ~ ở dòng trống như Vim
       ;;window-select  ; chọn cửa sổ trực quan
       ;;workspaces     ; quản lý không gian làm việc
       ;;zen            ; chế độ tập trung (zen mode)

       :editor
       (evil +everywhere) ; chế độ Evil (Vim emulation) +everywhere bật ở mọi nơi
       file-templates ; mẫu file
       fold           ; gập/mở code block (folding)
       (format +onsave) ; tự động format code khi lưu (+onsave) god            ; chế độ god-mode (ít dùng)
       ;;lispy          ; hỗ trợ Lisp hiệu quả
       multiple-cursors ; con trỏ đa điểm
       ;;parinfer       ; tự động cân bằng dấu ngoặc cho Lisp
       ;;rotate-text    ; xoay vòng các biến thể text (true/false, ...)
       snippets       ; sử dụng code snippet (yasnippet)
       ;;word-wrap      ; tự động xuống dòng (thường không bật cho code)

       :emacs
       (dired +icons) ; trình quản lý file Dired (+icons hiển thị icon)
       electric       ; tự động thụt lề, thêm ngoặc
       ;;(eshell +fish) ; trình shell trong Emacs (+fish hỗ trợ cú pháp fish)
       ;;ibuffer        ; quản lý buffer nâng cao
       (undo +tree)   ; hệ thống undo dạng cây (undo-tree)
       vc             ; tích hợp Version Control (Git, ...)

       :term
       ;;(eshell +popup)         ; đã có ở trên
       ;;shell          ; shell cơ bản
       ;;term           ; terminal emulator đầy đủ (vterm/eterm)
       (vterm +popup)          ; terminal emulator nhanh (cần biên dịch module ngoài)

       :checkers
       syntax         ; kiểm tra cú pháp (flycheck)
       ;;(spell +aspell); kiểm tra chính tả (+aspell dùng aspell backend)
       ;;grammar        ; kiểm tra ngữ pháp

       :tools
       ;;ansible
       ;;(debugger +lsp) ; công cụ debug (+lsp tích hợp với LSP)
       ;;direnv         ; tích hợp direnv
       ;;docker
       editorconfig   ; đọc file .editorconfig
       ;;ein            ; notebook jupyter
       (eval +overlay); thực thi code và hiển thị kết quả (+overlay)
       ;;gist           ; tương tác GitHub Gist
       ;;(lookup +docsets) ; tra cứu tài liệu (+docsets dùng Dash/Zeal)
       (lsp +peek)      ; Language Server Protocol (+peek xem định nghĩa nhanh) <- QUAN TRỌNG
       ;;macos          ; tích hợp macOS
       make           ; hỗ trợ Makefile
       ;;git
       magit          ; giao diện Git mạnh mẽ <- RẤT NÊN DÙNG nếu làm việc với Git
       ;;pass           ; quản lý mật khẩu pass
       ;;pdf            ; xem PDF
       ;;prodigy        ; quản lý tiến trình chạy nền
       rgb            ; xem màu sắc
       ;;terraform      ; hỗ trợ Terraform
       ;;tmux           ; tích hợp tmux
       tree-sitter    ; Parser tree-sitter (thay thế regex-based) <- NÊN BẬT ĐỂ TĂNG TỐC
       ;;upload         ; upload file (scp, ...)

       :os
       ;;(:if IS-MAC macos) ; chỉ bật module macos nếu chạy trên macOS
       ;;tty            ; tối ưu cho terminal

       :lang
       ;;agda           ; ngôn ngữ Agda
       ;;beancount      ; ngôn ngữ kế toán Beancount
       ;;(cc +lsp)      ; C/C++ (+lsp bật LSP)
       ;;clojure        ; Clojure
       ;;common-lisp    ; Common Lisp
       ;;coq            ; Coq
       ;;crystal        ; Crystal
       ;;csharp         ; C# (+lsp)
       ;;data           ; các định dạng dữ liệu (CSV, YAML, JSON, TOML)
       ;;dart           ; Dart (+flutter)
       ;;elixir         ; Elixir
       ;;elm            ; Elm
       emacs-lisp     ; Emacs Lisp
       ;;erlang         ; Erlang
       ;;ess            ; R
       ;;factor         ; Factor
       ;;faust          ; Faust
       ;;fsharp         ; F#
       ;;fstar          ; F*
       ;;gdscript       ; GDScript (Godot)
       ;;(go +lsp)      ; Go (+lsp)
       ;;(graphql +lsp) ; GraphQL (+lsp)
       ;;(haskell +lsp) ; Haskell (+lsp)
       ;;hy             ; Hy
       ;;idris          ; Idris
       ;;(java +lsp)    ; Java (+lsp)
       javascript     ; JavaScript (thường cần cho TypeScript tooling)
       json           ; JSON (thường được data hoặc web bao gồm)
       ;;(julia +lsp)   ; Julia (+lsp)
       ;;kotlin         ; Kotlin (+lsp)
       ;;latex          ; LaTeX (+latexmk +cdlatex +fold)
       ;;lean           ; Lean
       ;;ledger         ; Ledger
       ;;lua            ; Lua (+lsp)
       markdown       ; Markdown
       ;;nim            ; Nim
       ;;nix            ; Nix (+lsp)
       ;;ocaml          ; OCaml
       org            ; Org mode (+pretty +roam2)
       ;;php            ; PHP (+lsp)
       ;;plantuml       ; PlantUML
       ;;purescript     ; PureScript
       ;;(python +lsp +pyright) ; Python (+lsp, +pyright dùng pyright làm LSP server)
       ;;qt             ; Qt (.ui files) (+lsp)
       ;;racket         ; Racket
       ;;raku           ; Raku
       ;;(rest +jq)     ; REST client (+jq hỗ trợ query JSON)
       ;;rst            ; reStructuredText
       ;;(ruby +lsp)    ; Ruby (+lsp)
       ;;(rust +lsp)    ; Rust (+lsp)
       ;;scala          ; Scala (+lsp)
       ;;(scheme +guile); Scheme (+guile dùng Guile)
       sh             ; Shell script
       ;;sml            ; Standard ML
       ;;solidity       ; Solidity (+lsp)
       ;;swift          ; Swift (+lsp)
       (typescript +lsp); TypeScript (+lsp) <- QUAN TRỌNG
       ;;vala           ; Vala
       ;;(web +lsp)       ; HTML/CSS/JS (+lsp) <- Thường cần thiết cho TS/JS dev
       yaml           ; YAML

       :config
       ;; literate
       (default +bindings +smartparens)) ; cấu hình mặc định (+bindings phím tắt cơ bản, +smartparens quản lý cặp dấu)

;; --- Thêm dòng này để ưu tiên tree-sitter nếu đã bật module ---
(when (modulep! :tools tree-sitter)
  (setq-hook! '(typescript-mode-hook web-mode-hook) major-mode 'tree-sitter))
