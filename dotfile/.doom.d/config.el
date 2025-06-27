;; -*- mode: emacs-lisp; lexical-binding: t; -*-

;; --- Cấu hình cơ bản ---
(setq doom-font (font-spec :family "JetBrainsMono Nerd Font" :size 16) ; Chọn font bạn thích
      doom-variable-pitch-font (font-spec :family "Ubuntu" :size 16)) ; Font cho text không phải code
(setq doom-theme 'doom-one) ; Chọn theme bạn thích

;; --- Tối ưu hiệu năng ---

;; 1. Tăng ngưỡng Garbage Collection (ví dụ: 100MB)
;; Giúp giảm tần suất GC, tránh giật lag khi Emacs dọn dẹp bộ nhớ.
(setq gc-cons-threshold (* 200 1024 1024)) ; 100 MB
;; Khởi động lại Emacs sau khi thay đổi gc-cons-threshold có thể hiệu quả hơn.
;; Có thể thử giá trị cao hơn (200MB, 500MB) nếu RAM dư dả.

;; 2. Tối ưu Font Lock (Syntax Highlighting)
;; Trì hoãn việc tô màu khi đang gõ hoặc di chuyển nhanh
(setq jit-lock-defer-time 0.3) ; Thời gian chờ (giây) trước khi tô màu lại, tăng lên nếu cần (vd: 0.3)
;; Ngưỡng kích thước file để bật chế độ font-lock chậm hơn (ít tô màu phức tạp hơn)
;; (setq font-lock-maximum-size (* 5 1024 1024)) ; Ví dụ: 5MB

;; 3. Tối ưu LSP
(after! lsp-mode
  ;; Tăng thời gian chờ trước khi gửi thay đổi buffer lên LSP server (giây)
  ;; Giảm tải cho LSP server khi bạn gõ nhanh hoặc thay đổi nhiều.
  (setq lsp-idle-delay 0.5) ; Tăng từ mặc định (thường là 0.5)

  ;; Tắt Code Lens nếu không dùng (các thông tin phụ như số tham chiếu,...)
  ;; (setq lsp-lens-enable nil)

  ;; Tắt gợi ý inlay (inlay hints) nếu thấy chậm hoặc không cần
  ;; (setq lsp-inlay-hint-enable nil)

  ;; (Tùy chọn) Tắt tạm thời kiểm tra lỗi tự động để xem có phải do nó gây lag không
  ;; (setq lsp-diagnostics-provider :none)
  ;; Nếu hết lag, bạn có thể bật lại và tìm cách tối ưu flycheck/flymake riêng.
  ;; Mặc định là :flycheck hoặc :flymake
  )

;; Cấu hình riêng cho lsp-typescript nếu cần (thường không cần thiết)
;; (after! lsp-typescript
;;   (setq lsp-typescript-preferences-quote-style "single") ; Ví dụ: dùng dấu nháy đơn
;;   )

;; 4. Sử dụng `so-long-mode` cho file rất lớn
;; Mặc định Doom đã bật `so-long-mode`. Nó sẽ tự kích hoạt với file lớn.
;; Bạn có thể xem ngưỡng hiện tại bằng `C-h v so-long-threshold`
;; Nếu file 1000 dòng của bạn chưa đủ lớn để kích hoạt, bạn có thể hạ ngưỡng này
;; (chỉ để thử nghiệm xem có giúp không):
;; (setq so-long-threshold 50000) ; Hạ ngưỡng xuống 50KB (mặc định có thể là 1MB hoặc hơn)
;; Hoặc bật thủ công: `M-x so-long-minor-mode`

;; 5. (Nâng cao) Native Compilation
;; Nếu bạn dùng Emacs 28+, cân nhắc biên dịch Emacs và các gói.
;; Chạy `M-x native-compile-async` để biên dịch các gói đã tải.
;; Xem thêm tài liệu của Doom về native compilation.

;; 6. Tối ưu Tree-sitter (nếu đã bật trong init.el)
;; Đảm bảo đã cài grammar cho typescript: M-x treesit-install-language-grammar RET typescript RET
(after! treesit
  ;; Tree-sitter thường đã khá nhanh, ít cần tùy chỉnh hiệu năng ở đây.
  ;; Đảm bảo nó được dùng cho typescript-mode như đã cấu hình trong init.el
  )

;; --- Cấu hình Playwright (Nếu có cấu hình Emacs đặc thù) ---
;; Hiện tại chưa có cấu hình đặc biệt nào về hiệu năng liên quan trực tiếp đến Playwright
;; trong Emacs, ngoài việc xử lý file TypeScript lớn nói chung.

;; --- Các cài đặt khác của bạn ---
(setq display-line-numbers-type t) ; Ví dụ: số dòng tương đối

;; Nhớ chạy doom sync sau khi lưu các file này!
(message "Doom config loaded!")
