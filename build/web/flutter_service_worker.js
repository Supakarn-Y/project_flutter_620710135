'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "400adb1276183ef790a15be37d003282",
"assets/assets/images/bg.jpg": "731c2470ae5c36292fe4b3b99add197a",
"assets/assets/images/controller/joy_F310.png": "2e8a7aa2f6da33028a954da1a97e0848",
"assets/assets/images/controller/joy_F710.png": "90f202315ebed4c6184a5f5a17681d4e",
"assets/assets/images/controller/joy_G29.png": "37fbe717b234b0d25d6445545730f56a",
"assets/assets/images/controller/joy_shifter.png": "3be0f97e26745e8eb733fedd3d8cc389",
"assets/assets/images/headset/h_G331.jpg": "82260ad26f78f7292099a6ac60d21cbd",
"assets/assets/images/headset/h_G333.jpg": "19e91eba720ddef1d5587e9c0e59bf92",
"assets/assets/images/headset/h_G335_black.jpg": "2e0b9dd2a77e758a102e24676c1a3636",
"assets/assets/images/headset/h_G335_white.jpg": "e8ce678db6a931b43f36f7f5ef2e67fc",
"assets/assets/images/headset/h_G431.jpg": "4bcc4a9eaa0ff6c79ead0121445f10a2",
"assets/assets/images/headset/h_G435_black.jpg": "a3d88c0494f2ef2f5be89eb412ac7eff",
"assets/assets/images/headset/h_G435_blue.jpg": "c53d04ace4e6502521e300245dbf9cd1",
"assets/assets/images/headset/h_G435_white.jpg": "662f3aa5fe50e9af5d46c9470829eec1",
"assets/assets/images/headset/h_G633S.jpg": "476a50671216e0008093d74bfcdfada3",
"assets/assets/images/headset/h_G733.jpg": "a6d32de0120ce360e4187fb5ee59af2f",
"assets/assets/images/headset/h_G733_white.jpg": "4270d8613028c9e8e4682d0b49a28a86",
"assets/assets/images/headset/h_proX.jpg": "938c2f440c19847bcf5252ca53f5e733",
"assets/assets/images/headset/h_proX_league.jpg": "81dfd2f5a41e55d334c36571581f4dcf",
"assets/assets/images/keyboard/k_G213.png": "52e539460ef0947d0dcfe413b57db63d",
"assets/assets/images/keyboard/k_G512.jpg": "b3214b9f8c306bced0c4b119f744b821",
"assets/assets/images/keyboard/k_G913.jpg": "80e460ed2d0cb390479a79ecb9556a75",
"assets/assets/images/keyboard/k_G913_tkl.jpg": "4e799ec499275ac0b3affb9256bbfa70",
"assets/assets/images/keyboard/k_gpro_kda.jpg": "12ca6098fbd4ffcb126f0e98f5152d26",
"assets/assets/images/keyboard/k_gpro_league.jpg": "8402c3b7b0d912c3c28bb42770a4b8b0",
"assets/assets/images/logo.png": "fcd0a87743451e5668d2921e2577da25",
"assets/assets/images/mouse/m_g102.jpg": "da298a3208ee4abc42f0353284954357",
"assets/assets/images/mouse/m_g304.jpg": "318e7f06132da578c3d522d4bb6d5889",
"assets/assets/images/mouse/m_g304_kda.jpg": "cc6525e14292bce32e20f14d58e4686c",
"assets/assets/images/mouse/m_g304_white.jpg": "4a07f9dd77a36091aa303b9f88f72292",
"assets/assets/images/mouse/m_g403.png": "a319a672bbfb5f21ca3400a53d8b7c98",
"assets/assets/images/mouse/m_g502.jpg": "0003dc287c64dc5d4e19f9ce677e2698",
"assets/assets/images/mouse/m_g502_kda.jpg": "7c25bd047e4ca3bf957c1ec05ccb1ca9",
"assets/assets/images/mouse/m_g703.jpg": "68d964b3c45fc134956fd09c26fd24cf",
"assets/assets/images/mouse/m_g903.png": "ff9e7f12b44fe37ef3ceb62b3f3e7b08",
"assets/assets/images/mouse/m_gprox_super.jpg": "18321f2d45ddca85e256bde6bb75faa8",
"assets/assets/images/mouse/m_gprox_superwhite.jpg": "0cdb6860ce49456d1acd9799f4573422",
"assets/assets/images/mousepad/p_G640.jpg": "32d58bfe2efa9c63312b3f031059a8e3",
"assets/assets/images/mousepad/p_G840_league.jpg": "b47018d2c5add56ee753d41e0175e640",
"assets/assets/images/profile.jpg": "831636b6c20d19eda07c8cee788565f8",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "9d09c97fd7981a10e9eff7ccf0995eb3",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "70c564a085264dfedbdcc3d753b7d1ce",
"/": "70c564a085264dfedbdcc3d753b7d1ce",
"main.dart.js": "8a1dda976a449ca75782164c619a4dcb",
"manifest.json": "469e997046bbcb16462ec3b0f8df6752",
"version.json": "66ed4079aa1d84b0c153f32fd23526b4"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
