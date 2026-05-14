cask "github-notifications-menu-bar" do
  version "1.2.0"
  sha256 "3f393244b002e34e29645acec195ef7fdc77f0378d798c6e1789bde06e98eb5b"

  url "https://github.com/apomerenk/github-notification-menu-bar/releases/download/v#{version}/GitHubNotifications-#{version}.zip"
  name "GitHub Notifications"
  desc "Menu-bar app showing GitHub unread-notification count"
  homepage "https://github.com/apomerenk/github-notification-menu-bar"

  depends_on macos: ">= :ventura"
  app "GitHubNotifications.app"

  # Strip the quarantine attribute so Gatekeeper doesn't block an ad-hoc-signed app.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/GitHubNotifications.app"]
  end

  zap trash: [
    "~/.config/gh-notif-bar",
  ]
end
