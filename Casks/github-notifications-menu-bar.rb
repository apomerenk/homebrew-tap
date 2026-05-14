cask "github-notifications-menu-bar" do
  version "1.1.0"
  sha256 "c7e0927491bd928018200d556c4ebcedbf30a3b0a4d95edaffa53d35ead3ca56"

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
