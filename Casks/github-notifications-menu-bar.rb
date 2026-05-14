cask "github-notifications-menu-bar" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/apomerenk/github-notification-menu-bar/releases/download/v#{version}/GitHubNotifications-#{version}.zip"
  name "GitHub Notifications"
  desc "Menu-bar app showing GitHub unread-notification count"
  homepage "https://github.com/apomerenk/github-notification-menu-bar"

  depends_on macos: ">= :ventura"
  app "GitHubNotifications.app"

  zap trash: [
    "~/.config/gh-notif-bar",
  ]
end
