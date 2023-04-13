'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "bb6959dbe125fe6c4761e520690691ac",
"assets/assets/images/1.jpg": "009f509e4849cba46be6f842e7e5a9d6",
"assets/assets/images/bebe_sampuan.jpg": "81fbbceb870f8f6f4418a72922c0124a",
"assets/assets/images/bebe_yagi.jpg": "b6a63f6c23d7fd4df6eb06a9c77ae0ed",
"assets/assets/images/bepanthol.jpg": "3b738a71fb365c10f83ab4f0d7636639",
"assets/assets/images/file.png": "c3010e3ad0ea56adedb6d191d673d410",
"assets/assets/images/isim.png": "1377097ac842b86c420d4d4d2d8ee85c",
"assets/assets/images/islak_mendil.jpg": "15c9d5fe4920859412314ee2a06377bc",
"assets/assets/images/location%2520(1).png": "d724f141261268d0f2ea646ebe7a696a",
"assets/assets/images/main.jpg": "d08a10034211184635e37493250b4589",
"assets/assets/images/N1.jpg": "800db10f3ad9c6d52a4cee134cfb62a4",
"assets/assets/images/N2.jpg": "352a0aa8da0367a1e381be99dfac480e",
"assets/assets/images/N3.jpg": "92e370d904cfacc9fe98ce7866ba8420",
"assets/assets/images/omega_3.jpg": "db2eb9932732028c7276d39a6c606d9a",
"assets/assets/images/p10.jpg": "dd868fc806a4a9b3baf515fbc0cce48c",
"assets/assets/images/p11.jpg": "51732b953150266837bb55a427b57a09",
"assets/assets/images/p12.jpg": "41f9cca233a45dd7c9ae9ef814f9d66e",
"assets/assets/images/p13.jpg": "7f28068e076e5f8ec8e97c4f1f2226e4",
"assets/assets/images/p14.jpg": "8d5c28ad10438f30570bc78acd0245dc",
"assets/assets/images/p15.jpg": "d6ce1607d3a98421907745cd5cfa1433",
"assets/assets/images/p16.jpg": "50c2748bef0a3e5d7278d9daf8c30330",
"assets/assets/images/p17.jpg": "7a89a2b3c5849ea23177151ec1c19b5c",
"assets/assets/images/p18.jpg": "88cbaa6eaee8218f376936e43b821b66",
"assets/assets/images/p19.jpg": "3bc5f577122fd5910b16ef00333395e8",
"assets/assets/images/p20.jpg": "1cd1fdaab549c8dd770601cae1b06bbd",
"assets/assets/images/p21.jpg": "bce81445f5635bfcb7f1900f2f94fba3",
"assets/assets/images/p22.jpg": "38ee8d320b7ad3706aee8d5fc101f992",
"assets/assets/images/p23.jpg": "d5dc406ca9dd3bcda2f87e32d2bcdbfb",
"assets/assets/images/p24.jpg": "6b58a9378c905142856677a214d259e5",
"assets/assets/images/p25.jpg": "79ebc40f17b07e2d29901c823daa78ff",
"assets/assets/images/p26.jpg": "ed0122dee944e87b079d0f47e935ef76",
"assets/assets/images/p27.jpg": "a9f45aeda18d9a2a10f1cff12c8f2156",
"assets/assets/images/p28.jpg": "a23c4832bfc0b631018cf9906f5c90c7",
"assets/assets/images/p29.jpg": "669dd93c4b3a2501f336fa606b4be29c",
"assets/assets/images/p30.jpg": "f5ca9af067dbeb90a72ec8945c2d80d5",
"assets/assets/images/p31.jpg": "a7648fa9f37fc66a3c5ff529549cf7dd",
"assets/assets/images/p32.jpg": "7c6ee0f90db6eb34c8a599769ed3cefb",
"assets/assets/images/P33.jpg": "d1727627c609143b8d6eb7289462715b",
"assets/assets/images/p34.jpg": "bca3367e427943cda7b6e3bd7b66e95b",
"assets/assets/images/p35.jpg": "5061681a91b9df4e5679fb99f3510553",
"assets/assets/images/p36.jpg": "0fde17ba02a0ec0acab7a8e38a57ad2d",
"assets/assets/images/p37.jpg": "3269d4419684ce79813a800531805f2c",
"assets/assets/images/p38.jpg": "4217302f26ed7aa491ddee556b6017cb",
"assets/assets/images/p39.jpg": "9970b48b9642e163b188a19db414e322",
"assets/assets/images/p40.jpg": "c2bed6e460be8993da27abfc208a11c7",
"assets/assets/images/p41.jpg": "0e8053cf092a88394e0092080502cb98",
"assets/assets/images/p42.jpg": "9f482b3cbaa045ae38534fed778a6a63",
"assets/assets/images/p43.jpg": "1e882e7ba304c3e6e32382d343316981",
"assets/assets/images/p44.jpg": "a19327081c06ee0715e3320d5ab5aa00",
"assets/assets/images/p7.png": "08981de755f0186c20c92039cbe07e96",
"assets/assets/images/p8.jpg": "5c8aad81b75ea02fa2a608eab13c442b",
"assets/assets/images/p9.png": "0fb60cd18653bbe0f6c0a3be66ec61ef",
"assets/assets/images/parol.jpg": "113d3c6dcf443a00ae6167061aea9bbe",
"assets/assets/images/pharmacy.png": "92d180a4999bf2cae4012adfc73eedb5",
"assets/assets/images/recete.png": "0603532dc79a87dd921be31ce47e47d1",
"assets/assets/images/saglik_gecmisi.png": "6e2086e0c1755eb81f14e3aad79b3947",
"assets/assets/images/scooter.png": "b0d62bbef8be5a1a67345afd471f0c64",
"assets/assets/images/shopping-cart.png": "515fc584baa97d0aae930bc6161a864f",
"assets/assets/images/star.png": "c4032bdb10b938b061519787dff57f54",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "c8da5bdccda88a4d3f924d43c9dc5823",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "569c13ec56f3977cc64a35b5dd018383",
"/": "569c13ec56f3977cc64a35b5dd018383",
"main.dart.js": "9a19db1e2f3ddb93d020907e3eb3d582",
"manifest.json": "bcabe0c3a7634f9b6e73855557ab0d9f",
"version.json": "90e7c1a89725cc7aefce734268207eee"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
