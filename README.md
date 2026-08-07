[🇹🇷 Türkçe](#türkçe) | [🇬🇧 English](#english)

<br>

> 🌐 **Canlı Site / Live Website:** [https://www.website-linkiniz.com](https://www.website-linkiniz.com) 


---

<h2 id="türkçe">Eren Ertürk - Kişisel Web Sitesi</h2>

Bu depo, Eren Ertürk'e ait kişisel web sitesi ve portföy projesinin kaynak kodlarını içermektedir. Proje, hızlı ve esnek yapısıyla bilinen [Hugo](https://gohugo.io/) statik site oluşturucu (Static Site Generator - SSG) kullanılarak geliştirilmiştir.

### Özellikler

* **Çoklu Dil Desteği (i18n):** Türkçe (TR) ve İngilizce (EN) olmak üzere iki dilli yapı.
* **Tema:** Minimalist ve şık tasarımıyla öne çıkan [Hugo Monochrome](https://github.com/kaiiiz/hugo-theme-monochrome) teması.
* **Özelleştirilmiş Projeler Sayfası:** Kişisel ve açık kaynaklı projelerin sergilendiği, özel CSS kart tasarımına sahip projeler (Projects) sayfası.
* **SEO & Meta Etiketleri:** Open Graph ve Twitter Cards entegrasyonu.
* **Otomasyon:** Yeni blog yazıları oluşturmayı hızlandırmak için hazırlanan `new-post.ps1` PowerShell betiği.
* **Karanlık/Aydınlık Mod:** Tema destekli (varsayılan olarak "light" color scheme konfigüre edilmiştir).

### Gereksinimler

Projeyi yerel ortamınızda (local) çalıştırmak için bilgisayarınızda aşağıdaki araçların kurulu olması gerekmektedir:

* [Git](https://git-scm.com/)
* [Hugo](https://gohugo.io/getting-started/installing/) (Genişletilmiş (Extended) versiyon önerilir)

### Kurulum ve Yerel Ortamda Çalıştırma

**1. Depoyu Klonlayın**

Tema bir Git alt modülü (submodule) olarak eklendiği için depoyu `--recurse-submodules` bayrağı ile klonlamanız önemlidir:

```bash
git clone --recurse-submodules https://github.com/KULLANICI_ADINIZ/website_erenerturk.git
cd website_erenerturk
```

*(Eğer projeyi daha önce normal bir şekilde klonladıysanız, alt modülleri çekmek için şu komutu çalıştırabilirsiniz: `git submodule update --init --recursive`)*

**2. Yerel Sunucuyu Başlatın**

Projeyi geliştirme modunda çalıştırmak için:

```bash
hugo server -D
```

Bu komut, taslak (draft) halindeki içeriklerinizi de (`-D` bayrağı) görmenizi sağlar. Ardından tarayıcınızda `http://localhost:1313/` adresine giderek siteyi görüntüleyebilirsiniz.

### Proje Yapısı

* `config/`: Sitenin tüm ayarlarının bulunduğu klasör (`hugo.toml`, `languages.toml`, `params.toml` vb.).
* `content/`: Web sitesinin içerik barındıran asıl klasörü. İçerikler dillere göre `tr/` ve `en/` alt klasörlerine ayrılmıştır.
* `themes/monochrome/`: Projenin kullandığı alt modül olarak eklenen tema.
* `static/` & `assets/`: Resimler, özel CSS dosyaları ve diğer statik dosyalar.
* `new-post.ps1`: Yeni bir blog yazısı şablonu oluşturmak için yardımcı PowerShell betiği.

### Yeni İçerik Ekleme

Yeni bir blog yazısı eklemek için Hugo'nun standart komutunu kullanabilirsiniz:

```bash
hugo new content/tr/posts/yeni-yazi-basligi.md
```

Alternatif olarak, kök dizinde bulunan `new-post.ps1` betiğini (PowerShell) kullanarak da yeni içerik oluşturma sürecini otomatize edebilirsiniz.

### Derleme (Build) ve Yayına Alma

Siteyi yayına hazırlamak için kök dizinde sadece `hugo` komutunu çalıştırmanız yeterlidir:

```bash
hugo
```

Bu komut, yayınlanmaya hazır tüm HTML, CSS ve JS dosyalarını `public/` klasörü içerisine oluşturacaktır. Bu klasörün içeriğini herhangi bir statik web sunucusunda (GitHub Pages, Netlify, Vercel, Cloudflare Pages vb.) barındırabilirsiniz.

### İletişim

* **Yazar:** Eren Ertürk

---

<h2 id="english">Eren Ertürk - Personal Website</h2>

This repository contains the source code for Eren Ertürk's personal website and portfolio project. The project is built using the [Hugo](https://gohugo.io/) static site generator (SSG), known for its speed and flexibility.

### Features

* **Multi-language Support (i18n):** Bilingual structure with Turkish (TR) and English (EN).
* **Theme:** Features the [Hugo Monochrome](https://github.com/kaiiiz/hugo-theme-monochrome) theme, which stands out with its minimalist and elegant design.
* **Custom Projects Page:** A custom-designed Projects page with CSS cards to showcase personal and open-source projects.
* **SEO & Meta Tags:** Open Graph and Twitter Cards integration.
* **Automation:** Includes a `new-post.ps1` PowerShell script to speed up the process of creating new blog posts.
* **Dark/Light Mode:** Theme supported (default color scheme configured as "light").

### Requirements

To run the project on your local environment, you need to have the following tools installed on your computer:

* [Git](https://git-scm.com/)
* [Hugo](https://gohugo.io/getting-started/installing/) (Extended version recommended)

### Installation and Running Locally

**1. Clone the Repository**

Since the theme is added as a Git submodule, it is important to clone the repository with the `--recurse-submodules` flag:

```bash
git clone --recurse-submodules https://github.com/YOUR_USERNAME/website_erenerturk.git
cd website_erenerturk
```

*(If you have previously cloned the project normally, you can run the following command to pull the submodules: `git submodule update --init --recursive`)*

**2. Start the Local Server**

To run the project in development mode:

```bash
hugo server -D
```

This command allows you to view your draft contents (`-D` flag) as well. You can then view the site by navigating to `http://localhost:1313/` in your browser.

### Project Structure

* `config/`: The folder containing all site settings (`hugo.toml`, `languages.toml`, `params.toml`, etc.).
* `content/`: The main folder containing the website's content. Contents are divided into `tr/` and `en/` subfolders according to languages.
* `themes/monochrome/`: The theme used by the project, added as a submodule.
* `static/` & `assets/`: Images, custom CSS files, and other static assets.
* `new-post.ps1`: A helper PowerShell script to create a new blog post template.

### Adding New Content

You can use Hugo's standard command to add a new blog post:

```bash
hugo new content/en/posts/new-post-title.md
```

Alternatively, you can automate the process of creating new content using the `new-post.ps1` (PowerShell) script located in the root directory.

### Building and Deployment

To prepare the site for production, simply run the `hugo` command in the root directory:

```bash
hugo
```

This command will generate all the ready-to-publish HTML, CSS, and JS files into the `public/` folder. You can host the contents of this folder on any static web server (GitHub Pages, Netlify, Vercel, Cloudflare Pages, etc.).

### Contact

* **Author:** Eren Ertürk
