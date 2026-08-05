---
title: "Bana Ulaşın"
date: 2026-08-04T09:20:00+03:00
draft: false
---
Bana ulaşmak için aşağıdaki formu doldurabilirsiniz. Size en kısa sürede geri dönüş yapacağım.

<form name="contact" method="POST" data-netlify="true" class="contact-form">
  <p>
    <label>Adınız: <input type="text" name="name" required /></label>
  </p>
  <p>
    <label>E-posta Adresiniz: <input type="email" name="email" required /></label>
  </p>
  <p>
    <label>Mesajınız: <textarea name="message" required rows="5"></textarea></label>
  </p>
  <p>
    <button type="submit">Gönder</button>
  </p>
</form>

<style>
.contact-form { max-width: 500px; margin-top: 20px; }
.contact-form p { margin-bottom: 15px; }
.contact-form label { display: block; font-weight: bold; margin-bottom: 5px; }
.contact-form input, .contact-form textarea { width: 100%; padding: 10px; border: 1px solid var(--color-border); border-radius: 4px; box-sizing: border-box; background-color: var(--color-background-card); color: var(--color-text); }
.contact-form button { padding: 10px 20px; background-color: var(--color-text); color: var(--color-background); border: none; border-radius: 4px; cursor: pointer; font-weight: bold; }
.contact-form button:hover { opacity: 0.8; }
</style>
