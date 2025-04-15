let codespaceName = "vigilant-xylophone-x5wj599gggg5hpjpr";
let updateInterval;

function updateLinks() {
  document.getElementById('startServer').onclick = () => window.open(`https://${codespaceName}.github.dev`, '_blank');
  const crafty = document.getElementById('craftyPanel');
  if (crafty) {
    crafty.onclick = () => window.open(`https://27.ip.gl.ply.gg:2654/panel/server_detail?id=8431bed5-48c2-468a-bed1-7eb64b1b9468`, '_blank');
  }

  // Set static IPs
  document.getElementById('javaIP').textContent = "27.ip.gl.ply.gg:10027";
  document.getElementById('bedrockIP').textContent = "27.ip.gl.ply.gg";
  document.getElementById('bedrockPort').textContent = "1525";
}

function withTimeout(promise, ms) {
  return Promise.race([
    promise,
    new Promise((_, reject) => setTimeout(() => reject(new Error("Timeout")), ms))
  ]);
}

function updateServerStatus() {
  const javaURL = "https://api.mcsrvstat.us/1/27.ip.gl.ply.gg:10027";

  withTimeout(fetch(javaURL).then(res => res.json()), 1500).then(javaData => {
    const javaStatus = document.getElementById('javaStatus');
    const javaPlayerList = document.getElementById('javaPlayerList');
    const javaPlayersSpan = document.getElementById('javaPlayers');

    if (javaData.online) {
      javaStatus.textContent = "Online";
      javaStatus.classList.add('online');
      javaStatus.classList.remove('offline');

      javaPlayersSpan.innerHTML = "";
      if (javaData.players?.online > 0 && javaData.players.list?.length > 0) {
        javaPlayerList.style.display = "block";
        javaData.players.list.forEach(name => {
          const playerDiv = document.createElement('div');
          playerDiv.className = 'player-item';
          playerDiv.innerHTML = `<img src="steve-icon.png" class="player-icon"><span>${name}</span>`;
          javaPlayersSpan.appendChild(playerDiv);
        });
      } else {
        javaPlayerList.style.display = "block";
        javaPlayersSpan.innerHTML = `<div class="player-item no-players">No players online!</div>`;
      }
    } else {
      javaStatus.textContent = "Offline";
      javaStatus.classList.add('offline');
      javaStatus.classList.remove('online');
      javaPlayerList.style.display = "none";
    }
  }).catch(err => {
    console.warn("Server status check failed:", err);
  });
}

function startUpdatingStatus() {
  updateServerStatus();
  updateInterval = setInterval(updateServerStatus, 2000);
  document.addEventListener("visibilitychange", () => {
    clearInterval(updateInterval);
    if (!document.hidden) updateInterval = setInterval(updateServerStatus, 2000);
  });
}

function applyTheme(theme) {
  const body = document.body;
  const toggleThemeButton = document.getElementById('toggleTheme');
  body.classList.remove('dark-theme', 'light-theme');
  if (theme) {
    body.classList.add(theme);
    toggleThemeButton.textContent = theme === 'light-theme' ? 'Switch to Dark Theme' : 'Switch to Light Theme';
  } else {
    body.classList.add('dark-theme');
    toggleThemeButton.textContent = 'Switch to Light Theme';
  }
}

function copyText(elementId) {
  const text = document.getElementById(elementId).textContent;
  navigator.clipboard.writeText(text).then(() => {
    const btn = document.getElementById(elementId + "Btn");
    if (btn) {
      const original = btn.textContent;
      btn.textContent = "Copied!";
      setTimeout(() => btn.textContent = original, 1500);
    }
  });
}

document.addEventListener("DOMContentLoaded", function () {
  let credsButton = document.getElementById("toggleCredentials");
  if (credsButton) {
    let credentialsVisible = false;
    credsButton.addEventListener("click", function () {
      credentialsVisible = !credentialsVisible;
      document.getElementById("credentials").style.display = credentialsVisible ? "block" : "none";
      credsButton.textContent = credentialsVisible ? "Hide Username" : "Show Username";
      if (credentialsVisible) {
        document.getElementById("githubUser").textContent = "AryanIssPro";
      }
    });
  }

  updateLinks();
  startUpdatingStatus();
  applyTheme(localStorage.getItem('theme'));

  document.getElementById('toggleTheme').addEventListener('click', () => {
    const body = document.body;
    const isLight = body.classList.contains('light-theme');
    const newTheme = isLight ? 'dark-theme' : 'light-theme';
    localStorage.setItem('theme', newTheme);
    applyTheme(newTheme);
  });
});
