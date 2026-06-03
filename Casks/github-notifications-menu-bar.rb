cask "github-notifications-menu-bar" do
  version "1.3.1"
  sha256 "66c3e5831f22f6cb07b7b03b007ba8df8834d14294163cb59466e0fc531b2b18"

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
