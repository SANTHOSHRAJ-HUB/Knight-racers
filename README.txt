KNIGHT RACERS - ANDROID PROJECT (Capacitor)
Copyright belongs to Santhosh Raj Maroju

The game is bundled INSIDE the app (works offline). Landscape, fullscreen, screen stays on.
Android Back button = pause. App goes to background = auto pause. The SHOT button opens the share sheet
(save to Gallery/Drive/WhatsApp). Music, voice and siren start after the first tap.

=== OPTION A: BUILD IN THE CLOUD (no Android Studio needed) ===
1. Create a free GitHub account and a new repository.
2. Upload ALL files of this folder to that repository (keep the .github folder).
3. Open the repository > Actions tab > "Build Android APK" > Run workflow
   (it also runs automatically on every push).
4. When it turns green, open the run and download the artifact "KnightRacers-APK".
   Unzip it: KnightRacers-debug.apk is your app.

=== OPTION B: BUILD ON YOUR PC ===
1. Install: Node.js LTS (nodejs.org), JDK 21 (Temurin), Android Studio (it installs the Android SDK).
2. Set ANDROID_HOME to your SDK folder (Android Studio > Settings > Android SDK shows the path).
3. Double-click build-apk.bat   (or: npm install  then  npm run build:apk)
4. Result: KnightRacers-debug.apk in this folder.
   Or open the generated "android" folder in Android Studio and press Run / Build > Build APK.

=== INSTALL ON PHONE ===
Copy the APK to the phone, tap it, allow "Install unknown apps" when asked. Or: adb install KnightRacers-debug.apk

=== PLAY STORE (later) ===
The debug APK is for testing/sharing. For Google Play you need a signed release AAB:
create a keystore (keytool), configure signing in android/app/build.gradle, then run
  cd android  &&  gradlew bundleRelease
Change appId in capacitor.config.json BEFORE the first build if you want a different package name.

=== CUSTOMISE ===
- Portrait instead of landscape: edit scripts/patch-android.js (sensorLandscape -> sensorPortrait).
- Icon / splash: replace the PNG files in the assets folder, then build again.
- Game: edit www/index.html.
