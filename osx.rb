#apps

dep "1Password 4.app" do
  source "https://d13itkw33a7sus.cloudfront.net/dist/1P/mac4/1Password-4.4.3.zip"
end

dep "Adium.app" do
  source "http://downloads.sourceforge.net/project/adium/Adium_1.5.10.dmg"
end

dep "Alfred.app" do
  source "https://cachefly.alfredapp.com/Alfred_2.5_299.zip"
end

dep "Atom.app" do
  source "https://atom.io/download/mac"
end

dep "BetterTouchTool.app" do
  source "http://bettertouchtool.net/BetterTouchTool.zip"
end

dep "Caffeine.app" do
  source "http://download.lightheadsw.com/download.php?software=caffeine"
end

dep "Dash.app" do
  source "http://london.kapeli.com/Dash.zip"
end

dep "Dropbox.app" do
  source "https://www.dropbox.com/download?plat=mac"
end

dep "Eloquent.app" do
  source "https://launchpad.net/eloquent/trunk/2.4.9/+download/Eloquent-2.4.9.app.zip"
end

dep "Firefox.app" do
  source "https://download.mozilla.org/?product=firefox-32.0.3-SSL&os=osx&lang=en-US"
end

dep "Fuze.app" do
  source "https://www.fuze.com/fuze/mac_download?macgen=ngmac"
end

dep "GIMP.app" do
  source "http://download.gimp.org/pub/gimp/v2.8/osx/gimp-2.8.14.dmg"
end

dep "Google Chrome.app" do
  source "https://www.google.com/chrome?brand=CHMO#eula"
end

dep "Google Drive.app" do
  source "https://dl.google.com/drive/installgoogledrive.dmg"
end

dep "MenuCalendarClock iCal.app" do
  source "http://www.objectpark.net/download/MenuCalendarClock-4.5.2.dmg.gz"
end

dep "Mou.app" do
  source "http://25.io/mou/download/Mou.zip"
end

dep "Paintbrush.app" do
  source "http://downloads.sourceforge.net/paintbrush/Paintbrush-2.1.1.zip"
end

dep "Scroll Reverser.app" do
  source "https://pilotmoon.com/downloads/ScrollReverser-1.6.1.zip"
end

dep "Skype.app" do
  source "http://www.skype.com/go/getskype-macosx"
end

dep "smcFanControl.app" do
  source "http://www.eidac.de/smcfancontrol/smcfancontrol_2_4.zip"
end

dep "Sublime Text 2.app" do
  source "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg"
end

dep "VirtualBox.app" do
  source "http://download.virtualbox.org/virtualbox/4.3.18/VirtualBox-4.3.18-96516-OSX.dmg"
end

dep "VLC.app" do
  source "http://get.videolan.org/vlc/2.1.5/macosx/vlc-2.1.5.dmg"
end

dep "WebStorm.app" do
  source "http://download.jetbrains.com/webstorm/WebStorm-8.0.5.dmg"
end

dep "node"

dep "all-osx-apps" do
  # requires "1Password 4.app"
  requires "Adium.app"
  requires "Alfred.app"
  requires "Atom.app"
  requires "BetterTouchTool.app"
  requires "Caffeine.app"
  # requires "Dash.app"
  # requires "Dropbox.app"
  # requires "Eloquent.app"
  # requires "Firefox.app"
  requires "Fuze.app"
  # requires "GIMP.app"
  # requires "Google Chrome.app"
  requires "Google Drive.app"
  # requires "MenuCalendarClock iCal.app"
  # requires "Mou.app"
  # requires "Paintbrush.app"
  # requires "Scroll Reverser.app"
  requires "Skype.app"
  # requires "smcFanControl.app"
 # requires "Sublime Text 2.app"
#  requires "VirtualBox.app"
  requires "VLC.app"
  requires "WebStorm.app"
end

# settings

dep "auto-hide-dock" do
  met? {
    shell("defaults read com.apple.dock autohide") == "1"
  }

  meet {
    shell("defaults write com.apple.dock autohide -bool true")
    shell("killall -HUP Dock")
  }
end

dep "all-osx-settings" do
  requires "auto-hide-dock"
end
