cask "github-notifications-menu-bar" do
  version "1.0.0"
  sha256 "d5cf9754061eec091661c5009f750a9847bec8436d32ff7ae9e11d179c216be0"

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
