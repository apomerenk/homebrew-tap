cask "github-notifications-menu-bar" do
  version "1.3.0"
  sha256 "ec23c535cef4c266d11b24adf692fd12ec4af02735a8bacb48340e455ad12c08"

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
