---
title: "Bana Ulaşın"
date: 2026-08-03T13:41:00+03:00
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
.contact-form {
  max-width: 500px;
  margin-top: 20px;
}
.contact-form p {
  margin-bottom: 15px;
}
.contact-form label {
  display: block;
  font-weight: bold;
  margin-bottom: 5px;
}
.contact-form input, .contact-form textarea {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
.contact-form button {
  padding: 10px 20px;
  background-color: #333;
  color: #fff;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.contact-form button:hover {
  background-color: #555;
}
</style>
