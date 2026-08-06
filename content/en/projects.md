---
title: "Projects"
description: "My open-source and personal projects."
layout: "single"
---

<style>
.project-card-container {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
  margin-top: 2rem;
}
.project-card {
  background-color: var(--color-background-card, #fff);
  border: 1px solid var(--color-border, #e5e5e5);
  border-radius: 12px;
  padding: 1.5rem;
  display: flex;
  flex-direction: column;
  gap: 1rem;
  transition: transform 0.2s, box-shadow 0.2s;
}
.project-card:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
}
html[data-theme="dark"] .project-card:hover {
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
}
.project-card-header {
  display: flex;
  flex-direction: column;
  gap: 0.5rem;
}
.project-title {
  margin: 0 !important;
  font-size: 1.5rem;
  font-weight: 700;
  color: var(--color-text, #171717);
}
.project-desc {
  margin: 0 !important;
  color: var(--color-text-secondary, #525252);
  line-height: 1.6;
}
.project-footer {
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
  gap: 1rem;
  margin-top: 0.5rem;
}
.project-tech-stack {
  display: flex;
  flex-wrap: wrap;
  gap: 0.4rem;
}
.project-badge {
  font-size: 0.75rem;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  padding: 0.25rem 0.6rem;
  border: 1px solid var(--color-border, #e5e5e5);
  border-radius: 9999px;
  color: var(--color-text-secondary, #737373);
  font-weight: 600;
}
.project-link {
  font-weight: 600;
  color: var(--color-text, #171717);
  text-decoration: underline !important;
  text-underline-offset: 6px;
  text-decoration-color: var(--color-border) !important;
  transition: text-decoration-color 0.2s;
  font-size: 0.95rem;
}
.project-link:hover {
  text-decoration-color: var(--color-text) !important;
}
</style>

<div class="project-card-container">

  <div class="project-card">
    <div class="project-card-header">
      <h3 class="project-title">Chess Themed Labyrinth Game</h3>
    </div>
    <p class="project-desc">A strategy-focused puzzle game where players start with limited movement directions and collect direction-changing upgrades in a labyrinth to reach the king (the target).</p>
    <div class="project-footer">
      <a href="https://menura02.github.io/" class="project-link" target="_blank" rel="noopener noreferrer">Play Game &rarr;</a>           
      <a href="https://github.com/menura02/menura02.github.io" class="project-link" target="_blank" rel="noopener noreferrer">View Project &rarr;</a>
      <div class="project-tech-stack">
        <span class="project-badge">HTML5</span>
        <span class="project-badge">JavaScript</span>
        <span class="project-badge">Canvas</span>        
      </div>
    </div>
  </div>


  <div class="project-card">
    <div class="project-card-header">
      <h3 class="project-title">Textile Inventory Management</h3>
    </div>
    <p class="project-desc">A web application that digitizes all production and inventory processes of a textile company, from yarn purchasing and weaving to fabric dyeing and sales, featuring admin and user authorizations.</p>
    <div class="project-footer">
      <a href="https://github.com/menura02/Tekstil-Yonetim-Sistemi" class="project-link" target="_blank" rel="noopener noreferrer">View Project &rarr;</a>
      <div class="project-tech-stack">
        <span class="project-badge">PHP</span>
        <span class="project-badge">MySQL</span>
        <span class="project-badge">JavaScript</span>
        <span class="project-badge">Bootstrap 5</span>              
      </div>
    </div>
  </div>

  <div class="project-card">
    <div class="project-card-header">
      <h3 class="project-title">Python Syntax Highlighter</h3>
    </div>
    <p class="project-desc">A real-time Python code highlighting tool and desktop text editor featuring custom Lexer and Parser algorithms written entirely from scratch without using any external libraries.</p>
    <div class="project-footer">
      <a href="https://github.com/menura02/PySyntaxHighlight" class="project-link" target="_blank" rel="noopener noreferrer">View Project &rarr;</a>
      <div class="project-tech-stack">
        <span class="project-badge">Python</span>
        <span class="project-badge">Tkinter</span>
        <span class="project-badge">Lexer</span>
        <span class="project-badge">Parser</span>        
      </div>
    </div>
  </div>


  <div class="project-card">
    <div class="project-card-header">
      <h3 class="project-title">Flexible Shift Tracking System</h3>
    </div>
    <p class="project-desc">A Flask-based system that automates internal flexible working hours, calculates shifts/overtime with data fetched from devices, and centralizes all personnel leave tracking.</p>
    <div class="project-footer">
      <a href="https://github.com/menura02/attendance_app" class="project-link" target="_blank" rel="noopener noreferrer">View Project &rarr;</a>
      <div class="project-tech-stack">
        <span class="project-badge">Python</span>
        <span class="project-badge">Flask</span>
        <span class="project-badge">MS SQL</span>     
      </div>
    </div>
  </div>

  <div class="project-card">
    <div class="project-card-header">
      <h3 class="project-title">Personal Website</h3>
    </div>
    <p class="project-desc">A static web page hosting my personal projects and articles.</p>
    <div class="project-footer">
      <a href="https://github.com/menura02/website_erenerturk" class="project-link" target="_blank" rel="noopener noreferrer">View Project &rarr;</a>
      <div class="project-tech-stack">
        <span class="project-badge">Hugo</span>
        <span class="project-badge">CSS</span>
      </div>
    </div>
  </div>

</div>
