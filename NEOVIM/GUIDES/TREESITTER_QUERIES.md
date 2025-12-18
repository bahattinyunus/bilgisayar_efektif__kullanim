# 🌳 Tree-sitter Advanced Queries: Kodun Ruhuna Dokun

Tree-sitter sadece renklendirme (highlighting) için değildir. Kodun anlamsal (semantic) yapısını bir ağaç olarak analiz eder ve bu ağaç üzerinde sorgular (queries) çalıştırarak kod üzerinde cerrah hassasiyetiyle hareket etmeni sağlar.

## 🛠️ Text-Objects: Işık Hızında Seçim
`nvim-treesitter-textobjects` eklentisi ile sadece karakterleri değil, fonksiyonları, sınıfları ve parametreleri seçin.

- `vif`: Fonksiyonun içini seç (inside function).
- `vaf`: Fonksiyonun tamamını seç (around function).
- `viq`: Koşullu ifadeyi seç (inside conditional).
- `cia`: Argümanı değiştir (change inside argument).

## 🚀 Özel Sorgular (.scm dosyaları)
Kendi "capture group"larını oluşturarak Neovim'e yeni şeyler öğretin. `~/.config/nvim/queries/[dil]/textobjects.scm` dosyasına ekleyin:

```query
;; Fonksiyon isimlerini yakala
(function_declaration
  name: (identifier) @function.name)
```

## 🧘 Sticky Context (Nvim-Context)
Ekranın en üstünde hangi fonksiyonun veya döngünün içinde olduğunu gösteren sabit bir satır (context) ekleyin. Dev dosyalarda kaybolmayı imkansız kılar.

---
> 🦾 **Vizyon:** Kod artık senin için sadece metin değil, manipüle edilebilir bir nesne ağacıdır. Bir fonksiyonu taşımak, bir kelimeyi silmek kadar kolaylaşır.
