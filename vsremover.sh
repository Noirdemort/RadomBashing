#!/bin/bash
sudo rm -rf "/Applications/Visual Studio.app"
rm -rf ~/Library/Caches/VisualStudio
rm -rf ~/Library/Preferences/VisualStudio
rm -rf ~/Library/Preferences/Visual\ Studio
rm -rf ~/Library/Logs/VisualStudio
rm -rf ~/Library/VisualStudio
rm -rf ~/Library/Preferences/Xamarin/
rm -rf ~/Library/Developer/Xamarin
rm -rf ~/Library/Application\ Support/VisualStudio
rm -rf ~/Library/Application\ Support/VisualStudio/7.0/LocalInstall/Addins/
sudo rm -rf /Library/Frameworks/Mono.framework
sudo pkgutil --forget com.xamarin.mono-MDK.pkg
sudo rm -rf /etc/paths.d/mono-commands
sudo rm -rf /Developer/MonoDroid
rm -rf ~/Library/MonoAndroid
sudo pkgutil --forget com.xamarin.android.pkg
sudo rm -rf /Library/Frameworks/Xamarin.Android.framework
rm -rf ~/.android
rm -rf ~/Library/MonoTouch
sudo rm -rf /Library/Frameworks/Xamarin.iOS.framework
sudo rm -rf /Developer/MonoTouch
sudo pkgutil --forget com.xamarin.monotouch.pkg
sudo pkgutil --forget com.xamarin.xamarin-ios-build-host.pkg
sudo pkgutil --forget com.xamarin.xamarin.ios.pkg
sudo rm -rf /Library/Frameworks/Xamarin.Mac.framework
rm -rf ~/Library/Xamarin.Mac
sudo /Library/Frameworks/Xamarin.Interactive.framework/Versions/Current/uninstall
rm "~/Library/Application Support/XamarinStudio-6.0/LocalInstall/Addins/Xamarin.Interactive"
rm "~/Library/Application Support/XamarinStudio-6.0/LocalInstall/Addins/Xamarin.Inspector"
rm /Library/Frameworks/Xamarin.Interactive.framework
rm /Library/Frameworks/Xamarin.Inspector.framework

sudo rm -rf "/Applications/Xamarin Profiler.app"
rm -rf ~/Library/Caches/XamarinInstaller/
rm -rf ~/Library/Caches/VisualStudioInstaller/
rm -rf ~/Library/Logs/XamarinInstaller/
rm -rf ~/Library/Logs/VisualStudioInstaller/
rm -rf ~/Library/Preferences/Xamarin/
rm -rf "~/Library/Preferences/Visual Studio/"
sudo rm -rf /Library/Frameworks/Mono.framework
sudo pkgutil --forget com.xamarin.mono-MDK.pkg


rm -rf "/Applications/Xamarin Studio.app"
rm -rf "/Applications/Xamarin Profiler.app"
rm -rf "/Applications/Xamarin Workbooks.app"
rm -rf ~/Library/Caches/XamarinStudio-*
rm -rf ~/Library/Logs/XamarinStudio-*
rm -rf ~/Library/Preferences/XamarinStudio-*
rm -rf ~/Library/XamarinStudio-*
rm -rf ~/Library/Caches/Xamarin
rm -rf ~/Library/Caches/VisualStudio
rm -rf ~/Library/Developer/Xamarin
rm -rf ~/Library/Developer/XamarinStudio
rm -rf ~/Library/Developer/VisualStudio
rm -rf ~/Library/Logs/Xamarin
rm -rf ~/Library/Logs/VisualStudio
rm -rf ~/Library/Preferences/Xamarin
rm -rf ~/Library/Preferences/VisualStudio
rm -rf ~/Library/Xamarin
rm -rf ~/Library/MonoAndroid
rm -rf ~/Library/XamarinStudio-*
rm -rf ~/Library/VisualStudio
rm -rf ~/Library/Application\ Support/XamarinStudio-*
rm -rf ~/Library/Application\ Support/VisualStudio
rm -rf ~/.templateengine/Visual\ Studio
rm -rf ~/.share/Xamarin
rm -rf ~/.local/share/Xamarin

sudo rm -f /private/var/db/receipts/com.xamarin.*
sudo rm -f /private/var/db/receipts/xamarin.*
echo "stage 1"
# Uninstall Mono MDK
# You will also want to make sure that there are no other dependencies on Mono
sudo rm -rf /Library/Frameworks/Mono.framework
sudo pkgutil --forget com.xamarin.mono-MDK.pkg
rm -rf ~/.local/share/MonoForAndroid
rm -rf ~/.config/.mono
rm -rf ~/.android

# Uninstall Xamarin.Android
sudo rm -rf /Developer/MonoDroid
sudo rm -rf /Library/Frameworks/Xamarin.Android.framework
sudo pkgutil --forget com.xamarin.android.pkg
rm -rf ~/Library/MonoAndroid

# Uninstall Xamarin.iOS
rm -rf ~/Library/MonoTouch
sudo rm -rf /Library/Frameworks/Xamarin.iOS.framework
sudo rm -rf /Developer/MonoTouch
sudo rm -rf /Developer/MonoAndroid
sudo pkgutil --forget com.xamarin.monotouch.pkg
#sudo pkgutil --forget com.xamarin.xamarin-ios-build-host.pkg

echo "stage 2"
## To Uninstall the Xamarin Build Host
 sudo rm -rf "/Applications/Xamarin.iOS Build Host.app"

## To unload and remove the Xamarin Build Host launchd job
 launchctl unload /Library/LaunchAgents/com.xamarin.mtvs.buildserver.plist
sudo rm -f /Library/LaunchAgents/com.xamarin.mtvs.buildserver.plist

# Uninstall Xamarin.Mac
sudo rm -rf /Library/Frameworks/Xamarin.Mac.framework
rm -rf ~/Library/Xamarin.Mac
sudo rm -rf /Library/Frameworks/Xamarin.Interactive.framework

# Uninstall Xamarin Installer
rm -rf ~/Library/Caches/XamarinInstaller/
rm -rf ~/Library/Logs/XamarinInstaller/
rm -rf ~/Library/Preferences/Xamarin/

# Uninstall Microsoft NuGet
rm -rf ~/.local/share/NuGet
rm -rf ~/.config/NuGet
rm -rf ~/.config/.NuGet
rm -rf ~/.NuGet

# Uninstall traces of visual studio code
rm -rf ~/.vscode

echo "stage 3"
