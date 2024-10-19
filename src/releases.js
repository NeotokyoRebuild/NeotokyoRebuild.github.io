"use strict";

function getDownloadLinks() {
  const SCHEME = "https",
    API = "api.github.com",
    RES = "repos",
    ORG = "NeotokyoRebuild",
    REPO = "neo",
    QUERY = "releases/latest";

  const url = `${SCHEME}://${API}/${RES}/${ORG}/${REPO}/${QUERY}`;

  fetch(url)
    .catch((e) => console.error(e))
    .then((res) => {
      res
        .json()
        .catch((e) => console.error(e))
        .then((j) => {
          const tagName = j["tag_name"];
          const published = new Date(j["published_at"]);

          let assets = Array.from(j["assets"]).filter((a) => {
            return [
              "libraries-Linux-Release",
              "libraries-Windows-Release",
              "resources",
            ].some((v) => a.name.includes(v));
          });

          const labels = [
            "Linux-only binaries: ",
            "Windows-only binaries: ",
            "Windows and Linux resources: ",
          ];
          let i = 0;

          let div = document.getElementById("downloading-ntre-div");
          if (!div) {
            console.error("div not found");
            return;
          }

          let pInfo = document.createElement("p");
          pInfo.appendChild(document.createTextNode("Current release: " + tagName));
          pInfo.appendChild(document.createElement("br"));
          pInfo.appendChild(document.createTextNode("Published on: " + published.toISOString().split('T')[0]));
          div.appendChild(pInfo);

          assets.forEach((asset) => {
            console.log(asset);

            div.appendChild(document.createTextNode(labels[i]));
            i += 1;

            let a = document.createElement("a");
            a.appendChild(document.createTextNode(asset.name));
            a.appendChild(document.createElement("br"));
            a.href = asset.browser_download_url;

            div.appendChild(a);
          });
        });
    });
}

window.onload = getDownloadLinks;
