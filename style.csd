* {
    box-sizing: border-box;
}

:root {
    font-family: Arial, sans-serif;
    color: #172033;
    background: #f4f7fb;

    --primary: #3157c8;
    --primary-dark: #2443a0;
    --muted: #5c667a;
    --line: #e0e6f0;
}

body {
    margin: 0;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}

a {
    color: inherit;
}

.container {
    width: min(100% - 2rem, 70rem);
    margin-inline: auto;
}

/* Header */

.topbar {
    background: white;
    border-bottom: 1px solid var(--line);
}

.topbar-inner {
    min-height: 4.5rem;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 1rem;
}

.logo {
    color: var(--primary);
    font-size: 1.3rem;
    font-weight: bold;
    text-decoration: none;
}

/* Navigation */

nav {
    display: flex;
    flex-wrap: wrap;
    gap: 0.5rem;
}

nav a {
    padding: 0.55rem 0.8rem;
    border-radius: 0.45rem;
    color: #344056;
    font-weight: bold;
    text-decoration: none;
}

nav a:hover,
nav a[aria-current="page"] {
    color: white;
    background: var(--primary);
}

a:focus-visible,
button:focus-visible {
    outline: 3px solid #e9a400;
    outline-offset: 3px;
}

/* Main Content */

.page-shell {
    flex: 1;
    padding-block: 3rem;
}

.intro {
    margin-bottom: 1.5rem;
}

.eyebrow {
    color: var(--primary);
    font-size: 0.78rem;
    font-weight: bold;
    letter-spacing: 0.12em;
}

h1 {
    margin: 0.35rem 0;
    font-size: clamp(2rem, 5vw, 3.3rem);
}

.intro p {
    color: var(--muted);
}

/* Content Card */

.content-card {
    min-height: 17rem;
    padding: 2rem;
    border: 1px solid var(--line);
    border-radius: 1rem;
    background: white;
    box-shadow: 0 12px 35px rgb(25 45 85 / 7%);
    animation: appear 0.25s ease-out;
}

.content-card h2 {
    margin-top: 0;
    font-size: 1.8rem;
}

.content-card p {
    color: var(--muted);
    line-height: 1.7;
}

.feature-list {
    padding-left: 1.25rem;
    color: var(--muted);
    line-height: 1.9;
}

/* Buttons */

.action-link,
button {
    display: inline-block;
    margin-top: 0.75rem;
    padding: 0.75rem 1rem;
    border: none;
    border-radius: 0.5rem;
    color: white;
    background: var(--primary);
    font: inherit;
    font-weight: bold;
    text-decoration: none;
    cursor: pointer;
}

.action-link:hover,
button:hover {
    background: var(--primary-dark);
}

/* Contact Form */

.contact-form {
    display: grid;
    gap: 0.8rem;
    max-width: 28rem;
}

label {
    font-weight: bold;
}

input,
textarea {
    width: 100%;
    padding: 0.75rem;
    border: 1px solid #aeb9cc;
    border-radius: 0.45rem;
    font: inherit;
}

.form-message {
    color: green !important;
}

/* Footer */

.footer {
    padding-block: 1rem;
    color: var(--muted);
    background: white;
    border-top: 1px solid var(--line);
}

/* Screen Reader Support */

.visually-hidden {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0, 0, 0, 0);
    white-space: nowrap;
    border: 0;
}

/* Animation */

@keyframes appear {
    from {
        opacity: 0;
        transform: translateY(6px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Responsive Design */

@media (max-width: 38rem) {

    .topbar-inner {
        align-items: flex-start;
        flex-direction: column;
        padding-block: 1rem;
    }

    nav {
        gap: 0.25rem;
    }

    nav a {
        padding-inline: 0.55rem;
    }

    .page-shell {
        padding-block: 2rem;
    }
}

/* Reduced Motion */

@media (prefers-reduced-motion: reduce) {

    *,
    *::before,
    *::after {
        animation-duration: 0.01ms !important;
        scroll-behavior: auto !important;
    }
}