cask 'pycharm-eap' do
  version '2017.1,171.3224.4'
  sha256 'c6e5ce69120eab5bef36831d17630c5eb7f98d2faaf473d05a221d87906e4dee'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version.after_comma}.dmg"
  name 'PyCharm EAP'
  homepage 'https://www.jetbrains.com/pycharm/nextversion/'

  conflicts_with cask: 'pycharm'

  app "PyCharm #{version.before_comma} EAP.app"

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                "~/Library/Application Support/PyCharm#{version.before_comma}",
                "~/Library/Caches/PyCharm#{version.before_comma}",
                "~/Library/Logs/PyCharm#{version.before_comma}",
                "~/Library/Preferences/PyCharm#{version.before_comma}",
              ]
end
