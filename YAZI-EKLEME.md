# Yeni Yazı Ekleme Rehberi

Bu rehber, [erenerturk.tech](https://erenerturk.tech/) sitesine yeni bir blog yazısının nasıl ekleneceğini adım adım anlatır.

Site GitHub Actions ile yayınlanır: `main` dalına yapılan her push, `.github/workflows/hugo.yaml` workflow'unu çalıştırır. Workflow siteyi Hugo ile derleyip GitHub Pages'e yükler. Yani yazıyı push'lamak, yayınlamak için yeterlidir.

---

## Kısa özet

1. `content/tr/posts/` (ve isteğe bağlı olarak `content/en/posts/`) altında bir `.md` dosyası oluştur.
2. Başlık bilgilerini (front matter) doldur ve `draft: false` yap.
3. Yazıyı Markdown ile yaz.
4. `git add`, `git commit` ve `git push origin main` komutlarını çalıştır.
5. Actions sekmesinde workflow'un yeşil bitmesini bekle ve yazıyı sitede kontrol et.

---

## 1. Repoyu güncelle

Başka bir bilgisayardan ya da GitHub üzerinden değişiklik yapılmış olabilir. Çakışma yaşamamak için işe başlamadan önce son hali çek:

```bash
git pull origin main
```

## 2. Yazı dosyasını oluştur

Site iki dilli, her dilin kendi klasörü var:

| Dil      | Klasör              | Yazının adresi                                 |
|----------|---------------------|------------------------------------------------|
| Türkçe   | `content/tr/posts/` | `https://erenerturk.tech/tr/posts/<dosya-adi>/`    |
| İngilizce| `content/en/posts/` | `https://erenerturk.tech/en/posts/<dosya-adi>/` |

**Dosya adı kuralları:**

- Küçük harf kullan, kelimeleri `-` ile ayır, Türkçe karakter kullanma. Örnek: `ilk-yazim.md`
- Dosya adı aynı zamanda yazının adresi olur.
- İki dilde **aynı dosya adını** kullanırsan Hugo bunları birbirinin çevirisi sayar ve sitedeki dil değiştirici doğru yazıya gider.
- Yazının yalnızca tek bir dilde olması da sorun değildir.

### Yöntem A: Elle oluşturmak (her yerde çalışır)

Dosyayı editörde aç ve 3. adımdaki şablonu yapıştır.

### Yöntem B: Hugo ile oluşturmak (Hugo çalışıyorsa)

```bash
hugo new content/tr/posts/ilk-yazim.md --kind post
```

Ya da kök dizindeki betiği kullan. Betik, TR ve EN dosya adlarını sorar:

```powershell
.\new-post.ps1 -TrName ilk-yazim -EnName ilk-yazim
```

> **Not:** Bu yöntemlerin ikisi de `archetypes/post.md` şablonunu kullanır ve dosyayı `draft: true` olarak oluşturur.
> Windows Application Control `hugo.exe`'yi engelliyorsa bu komutlar çalışmaz; Yöntem A'yı kullan.

## 3. Front matter'ı doldur

Her yazı, `---` satırları arasındaki bir başlık bloğuyla başlar:

```yaml
---
title: "İlk Yazım"
date: 2026-11-17T14:00:00+03:00
draft: false
description: "Yazının bir iki cümlelik özeti"
categories: ["Genel"]
tags: ["hugo", "web"]
image: ""
---

Yazı içeriği buraya gelecek...
```

| Alan          | Ne işe yarar | Dikkat |
|---------------|--------------|--------|
| `title`       | Yazının başlığı | Tırnak içinde yaz. |
| `date`        | Yayın tarihi; yazılar bu tarihe göre sıralanır | Gelecek bir tarih verirsen yazı o tarihe kadar **yayınlanmaz**. |
| `draft`       | Taslak mı? | `true` ise yazı **yayınlanmaz**. Yayına hazır olunca `false` yap. |
| `description` | Listede ve arama motorlarında görünen özet | Kısa tut, 160 karakteri geçmesin. |
| `categories`  | Kategoriler | Örnek: `["Yazılım"]` |
| `tags`        | Etiketler | Örnek: `["hugo", "github"]` |
| `image`       | Kapak görseli (isteğe bağlı) | Kullanmıyorsan `""` bırak. |

## 4. Yazıyı yaz

İçerik Markdown ile yazılır:

```markdown
## Ara başlık

Normal paragraf. **Kalın**, *italik* ve [link](https://erenerturk.tech/).

- Liste maddesi
- Başka bir madde

![Görsel açıklaması](/images/ilk-yazim/kapak.jpg)
```

**Görseller:**

1. Görseli `static/images/<yazi-adi>/` klasörüne koy. Örnek: `static/images/ilk-yazim/kapak.jpg`
2. Yazıda `static` kısmını atlayarak `/` ile başlayan bir yol kullan: `/images/ilk-yazim/kapak.jpg`
3. Görselleri küçült; 300 KB altı idealdir.

## 5. (İsteğe bağlı) Yerelde önizle

Hugo çalışıyorsa, taslaklar dahil önizlemek için:

```bash
hugo server -D
```

Sonra tarayıcıda `http://localhost:1313` adresini aç. Dosyayı kaydettikçe sayfa kendiliğinden yenilenir.

Hugo çalışmıyorsa bu adımı atla; yazıyı push'layıp canlı sitede kontrol edebilirsin.

## 6. Commit'le ve push'la

```bash
git add content static
git commit -m "Add post: İlk Yazım"
git push origin main
```

Push reddedilirse (uzakta senin bilgisayarında olmayan bir değişiklik vardır), önce şunu çalıştır, sonra tekrar push'la:

```bash
git pull --rebase origin main
```

> `git push --force` kullanma.

## 7. Yayını takip et

1. GitHub'da repo → **Actions** sekmesine git.
2. En üstteki **Deploy Hugo site to Pages** çalışmasının yeşil tik ile bitmesini bekle (genelde 1–2 dakika).
3. Kırmızı çarpı varsa çalışmaya tıkla, **build** adımındaki hata mesajını oku. En sık nedeni front matter'daki bir yazım hatasıdır (eksik tırnak, `---` satırının unutulması gibi).

## 8. Sitede kontrol et

- Türkçe yazı: `https://erenerturk.tech/tr/posts/ilk-yazim/`
- İngilizce yazı: `https://erenerturk.tech/en/posts/ilk-yazim/`
- Yazılar listesi: `https://erenerturk.tech/tr/posts/`

Eski hali görünüyorsa sayfayı **Ctrl+F5** ile yenile.

---

## Sorun giderme

| Belirti | Olası neden | Çözüm |
|---------|-------------|-------|
| Yazı sitede yok, workflow yeşil | `draft: true` kalmış | `draft: false` yap, tekrar push'la. |
| Yazı sitede yok, workflow yeşil | `date` gelecekte | Tarihi bugün ya da geçmiş bir zaman yap. |
| `/posts/` sayfası 404 | Henüz yayınlanmış yazı yok | En az bir yazıyı `draft: false` ile yayınla. |
| Görsel görünmüyor | Yol yanlış | Yol `/images/...` ile başlamalı, `static/` yazılmamalı. Büyük/küçük harf de eşleşmeli. |
| Dil değiştirici yazıya gitmiyor | TR ve EN dosya adları farklı | İki dosyaya aynı adı ver. |
| Workflow kırmızı | Front matter hatası | Actions → build adımındaki hata satırına bak. |

## Yazıyı güncellemek veya silmek

- **Güncellemek:** Dosyayı düzenle, sonra commit'le ve push'la.
- **Yayından kaldırmak:** `draft: true` yap ya da dosyayı sil, sonra commit'le ve push'la.
