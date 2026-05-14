cask "github-notifications-menu-bar" do
  version "1.2.1"
  sha256 "ab4c71e026e55a232ce8d1ab2f55b82404417331bcb79d95f713b15c77f2d50f"

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
