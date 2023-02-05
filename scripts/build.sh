if [ $1 == "ios" ]
then
flutter clean
flutter pub get
cd ios
pod install --repo-update
cd ..
open ios -a "Xcode"
elif [ $1 == "apk" ]
then
flutter build apk --release
open build/app/outputs/apk/release
elif [ $1 == "bundle" ]
then
flutter build appbundle
open build/app/outputs/bundle/release
else
cd ios
pod install
cd ..
open ios -a "Xcode"
flutter build apk --release
open build/app/outputs/apk/release
fi